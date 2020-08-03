//
//  ContentView.swift
//  DemoDraw
//
//  Created by 郭冠杰 on 2020/8/2.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        // 頭髮
        let hairPath = UIBezierPath()
        hairPath.move(to: CGPoint(x: 190, y: 18))
        hairPath.addLine(to: CGPoint(x: 199, y: 30))
        hairPath.addLine(to: CGPoint(x: 221, y: 24))
        hairPath.addLine(to: CGPoint(x: 237, y: 37))
        hairPath.addQuadCurve(to: CGPoint(x: 254, y: 27), controlPoint: CGPoint(x: 245, y: 29))
        hairPath.addQuadCurve(to: CGPoint(x: 268, y: 47), controlPoint: CGPoint(x: 260, y: 31))
        hairPath.addLine(to: CGPoint(x: 289, y: 39))
        hairPath.addLine(to: CGPoint(x: 305, y: 58))
        hairPath.addLine(to: CGPoint(x: 316, y: 52))
        hairPath.addLine(to: CGPoint(x: 330, y: 89))
        hairPath.addLine(to: CGPoint(x: 312, y: 100))
        hairPath.addLine(to: CGPoint(x: 303, y: 91))
        hairPath.addLine(to: CGPoint(x: 279, y: 98))
        hairPath.addLine(to: CGPoint(x: 276, y: 84))
        hairPath.addLine(to: CGPoint(x: 245, y: 87))
        hairPath.addLine(to: CGPoint(x: 232, y: 73))
        hairPath.addLine(to: CGPoint(x: 206, y: 73))
        hairPath.addLine(to: CGPoint(x: 195, y: 59))
        hairPath.addLine(to: CGPoint(x: 182, y: 61))
        hairPath.addLine(to: CGPoint(x: 170, y: 44))
        hairPath.addQuadCurve(to: CGPoint(x: 190, y: 18), controlPoint: CGPoint(x: 181, y: 38))
        
        let hiarLayer = CAShapeLayer()
        hiarLayer.path = hairPath.cgPath
        hiarLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        hiarLayer.lineWidth = 5
        let hairColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        hiarLayer.fillColor = hairColor
        
        
        // 臉
        let facePath = UIBezierPath()
        facePath.move(to: CGPoint(x: 170, y: 44))
        facePath.addLine(to: CGPoint(x: 154, y: 57))
        facePath.addLine(to: CGPoint(x: 133, y: 68))
        facePath.addQuadCurve(to: CGPoint(x: 136, y: 165), controlPoint: CGPoint(x: 71, y: 110))
        facePath.addQuadCurve(to: CGPoint(x: 323, y: 196), controlPoint: CGPoint(x: 236, y: 231))
        facePath.addQuadCurve(to: CGPoint(x: 330, y: 89), controlPoint: CGPoint(x: 365, y: 175))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = facePath.cgPath
        faceLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        faceLayer.lineWidth = 5
        let faceColor = UIColor(red: 222/255, green: 192/255, blue: 173/255, alpha: 1)
        faceLayer.fillColor = faceColor.cgColor
        
        // 身體
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: 136, y: 165))
        bodyPath.addQuadCurve(to: CGPoint(x: 53, y: 272), controlPoint: CGPoint(x: 88, y: 159))
        bodyPath.addLine(to: CGPoint(x: 338, y: 271))
        bodyPath.addQuadCurve(to: CGPoint(x: 325, y: 198), controlPoint: CGPoint(x: 336, y: 198))
        
        let bodyLayer = CAShapeLayer()
        bodyLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        bodyLayer.lineWidth = 5
        bodyLayer.path = bodyPath.cgPath
        let bodyColor = UIColor(red: 143/255, green: 143/255, blue: 143/255, alpha: 1)
        bodyLayer.fillColor = bodyColor.cgColor
        
        
        // 身體(下方用白色遮住)
        let bodyDownPath = UIBezierPath()
        bodyDownPath.move(to: CGPoint(x: 33, y: 268))
        bodyDownPath.addLine(to: CGPoint(x: 400, y: 268))
        bodyDownPath.addLine(to: CGPoint(x: 400, y: 275))
        bodyDownPath.addLine(to: CGPoint(x: 33, y: 275))
        bodyDownPath.close()
        
        let bodyDownLayer = CAShapeLayer()
        bodyDownLayer.path = bodyDownPath.cgPath
        let bodyDownColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        bodyDownLayer.fillColor = bodyDownColor.cgColor
        
        
        // 身體(右手線條)
        let rightHandPath = UIBezierPath()
        rightHandPath.move(to: CGPoint(x: 289, y: 258))
        rightHandPath.addLine(to: CGPoint(x: 289, y: 268))
        
        let rightHandLayer = CAShapeLayer()
        rightHandLayer.path = rightHandPath.cgPath
        rightHandLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        rightHandLayer.lineWidth = 5
        
        
        // 身體(左手線條)
        let leftHandPath = UIBezierPath()
        leftHandPath.move(to: CGPoint(x: 116, y: 251))
        leftHandPath.addLine(to: CGPoint(x: 101, y: 273))
        
        let leftHandLayer = CAShapeLayer()
        leftHandLayer.path = leftHandPath.cgPath
        leftHandLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        leftHandLayer.lineWidth = 5
        
        
        // 左邊眉毛
        let leftEyeBrowPath = UIBezierPath()
        leftEyeBrowPath.move(to: CGPoint(x: 166, y: 84))
        leftEyeBrowPath.addQuadCurve(to: CGPoint(x: 201, y: 90), controlPoint: CGPoint(x: 174, y: 77))
        
        let leftEyeBrowLayer = CAShapeLayer()
        leftEyeBrowLayer.path = leftEyeBrowPath.cgPath
        leftEyeBrowLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        leftEyeBrowLayer.lineWidth = 4
        leftEyeBrowLayer.fillColor = UIColor.clear.cgColor
        
        
        // 右邊眉毛
        let rightEyeBrowPath = UIBezierPath()
        rightEyeBrowPath.move(to: CGPoint(x: 254, y: 103))
        rightEyeBrowPath.addQuadCurve(to: CGPoint(x: 285, y: 120), controlPoint: CGPoint(x: 272, y: 102))
        
        let rightEyeBrowLayer = CAShapeLayer()
        rightEyeBrowLayer.path = rightEyeBrowPath.cgPath
        rightEyeBrowLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        rightEyeBrowLayer.lineWidth = 4
        rightEyeBrowLayer.fillColor = UIColor.clear.cgColor
        
        
        // 鼻子(線條)
        let nosePath = UIBezierPath()
        nosePath.move(to: CGPoint(x: 218, y: 128))
        nosePath.addQuadCurve(to: CGPoint(x: 213, y: 148), controlPoint: CGPoint(x: 210, y: 146))
        
        let noseLayer = CAShapeLayer()
        noseLayer.path = nosePath.cgPath
        noseLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        noseLayer.lineWidth = 4
        noseLayer.fillColor = UIColor.clear.cgColor
        
        
        // 鼻子(點)
        let nose2Path = UIBezierPath(ovalIn: CGRect(x: 220, y: 145, width: 5, height: 5))
        
        let nose2Layer = CAShapeLayer()
        nose2Layer.path = nose2Path.cgPath
        
        let nose2Color = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        nose2Layer.fillColor = nose2Color
        
        
        // 左眼(眼白)
        let leftEyePath = UIBezierPath()
        leftEyePath.move(to: CGPoint(x: 168, y: 99))
        leftEyePath.addQuadCurve(to: CGPoint(x: 197, y: 112), controlPoint: CGPoint(x: 183, y: 96))
        leftEyePath.addQuadCurve(to: CGPoint(x: 191, y: 119), controlPoint: CGPoint(x: 198, y: 118))
        leftEyePath.addQuadCurve(to: CGPoint(x: 168, y: 99), controlPoint: CGPoint(x: 175, y: 114))
        
        let leftEyeLayer = CAShapeLayer()
        leftEyeLayer.path = leftEyePath.cgPath
        leftEyeLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        leftEyeLayer.lineWidth = 4
        let leftEyeColor = CGColor(red: 249/255, green: 246/255, blue: 246/255, alpha: 1)
        leftEyeLayer.fillColor = leftEyeColor
        
        
        // 右眼(眼白)
        let rightEyePath = UIBezierPath()
        rightEyePath.move(to: CGPoint(x: 256, y: 125))
        rightEyePath.addLine(to: CGPoint(x: 279, y: 131))
        rightEyePath.addQuadCurve(to: CGPoint(x: 279, y: 140), controlPoint: CGPoint(x: 289, y: 138))
        rightEyePath.addQuadCurve(to: CGPoint(x: 251, y: 133), controlPoint: CGPoint(x: 267, y: 140))
        rightEyePath.addQuadCurve(to: CGPoint(x: 256, y: 125), controlPoint: CGPoint(x: 244, y: 126))
        
        
        let rightEyeLayer = CAShapeLayer()
        rightEyeLayer.path = rightEyePath.cgPath
        rightEyeLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        rightEyeLayer.lineWidth = 4
        let rightEyeColor = CGColor(red: 249/255, green: 246/255, blue: 246/255, alpha: 1)
        rightEyeLayer.fillColor = rightEyeColor
        
        
        // 左眼(眼珠)
        let leftEye2Path = UIBezierPath(ovalIn: CGRect(x: 178, y: 108, width: 7, height: 7))
        
        let leftEye2Layer = CAShapeLayer()
        leftEye2Layer.path = leftEye2Path.cgPath
        let leftEye2Color = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        leftEye2Layer.fillColor = leftEye2Color
        
        
        // 右眼(眼珠)
        let rightEye2Path = UIBezierPath(ovalIn: CGRect(x: 263, y: 132, width: 6, height: 6))
        
        let rightEye2Layer = CAShapeLayer()
        rightEye2Layer.path = rightEye2Path.cgPath
        let rightEye2Color = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        rightEye2Layer.fillColor = rightEye2Color
        
        
        // 下巴(線條)
        let mouth2Path = UIBezierPath()
        mouth2Path.move(to: CGPoint(x: 190, y: 166))
        mouth2Path.addQuadCurve(to: CGPoint(x: 224, y: 180), controlPoint: CGPoint(x: 206, y: 179))
        
        let mouth2Layer = CAShapeLayer()
        mouth2Layer.path = mouth2Path.cgPath
        mouth2Layer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        mouth2Layer.lineWidth = 4
        mouth2Layer.fillColor = UIColor.clear.cgColor
        
        
        // 嘴巴
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 186, y: 153))
        mouthPath.addQuadCurve(to: CGPoint(x: 239, y: 175), controlPoint: CGPoint(x: 213, y: 156))
        mouthPath.addLine(to: CGPoint(x: 235, y: 172))
        mouthPath.addQuadCurve(to: CGPoint(x: 190, y: 153), controlPoint: CGPoint(x: 208, y: 170))
        
        let mouthLayer = CAShapeLayer()
        mouthLayer.path = mouthPath.cgPath
        mouthLayer.strokeColor = CGColor(red: 65/255, green: 13/255, blue: 0/255, alpha: 1)
        mouthLayer.lineWidth = 3
        let mouthColor = CGColor(red: 249/255, green: 246/255, blue: 246/255, alpha: 1)
        mouthLayer.fillColor = mouthColor
        
        
        // 右臉(淡色)
        let faceRightPath = UIBezierPath()
        faceRightPath.move(to: CGPoint(x: 321, y: 98))
        faceRightPath.addQuadCurve(to: CGPoint(x: 292, y: 201), controlPoint: CGPoint(x: 350, y: 182))
        faceRightPath.addQuadCurve(to: CGPoint(x: 323, y: 192), controlPoint: CGPoint(x: 311, y: 200))
        faceRightPath.addQuadCurve(to: CGPoint(x: 330, y: 89), controlPoint: CGPoint(x: 365, y: 175))
        
        let faceRightLayer = CAShapeLayer()
        faceRightLayer.path = faceRightPath.cgPath
        let faceRightColor = CGColor(red: 243/255, green: 214/255, blue: 194/255, alpha: 1)
        faceRightLayer.fillColor = faceRightColor
        
        view.layer.addSublayer(bodyLayer)
        view.layer.addSublayer(rightHandLayer)
        view.layer.addSublayer(leftHandLayer)
        view.layer.addSublayer(bodyDownLayer)
        view.layer.addSublayer(faceLayer)
        view.layer.addSublayer(hiarLayer)
        view.layer.addSublayer(leftEyeBrowLayer)
        view.layer.addSublayer(rightEyeBrowLayer)
        view.layer.addSublayer(noseLayer)
        view.layer.addSublayer(nose2Layer)
        view.layer.addSublayer(mouth2Layer)
        view.layer.addSublayer(leftEyeLayer)
        view.layer.addSublayer(rightEyeLayer)
        view.layer.addSublayer(mouthLayer)
        view.layer.addSublayer(leftEye2Layer)
        view.layer.addSublayer(rightEye2Layer)
        view.layer.addSublayer(faceRightLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
struct ContentView: View {
    var body: some View {
        VStack{
            DrawView()
            Text("這些機會不是屬於我的")
                .font(.system(size: 28))
                .offset(x: 0, y: -320)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
