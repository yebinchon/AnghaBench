; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_hyperlink_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_dialog_hyperlink_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@msi_dialog_hyperlink_handler.hrefW = internal constant [4 x i8] c"href", align 1
@msi_dialog_hyperlink_handler.openW = internal constant [5 x i8] c"open\00", align 1
@LIF_ITEMINDEX = common dso_local global i32 0, align 4
@LIF_URL = common dso_local global i32 0, align 4
@LM_GETITEM = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @msi_dialog_hyperlink_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_dialog_hyperlink_handler(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %9, align 4
  store i8 0, i8* %12, align 1
  %14 = load i32, i32* @LIF_ITEMINDEX, align 4
  %15 = load i32, i32* @LIF_URL, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LM_GETITEM, align 4
  %26 = ptrtoint %struct.TYPE_5__* %13 to i32
  %27 = call i32 @SendMessageW(i32 %24, i32 %25, i32 0, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %42, %3
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 60
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ false, %30 ], [ %39, %35 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  br label %30

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %46, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %51, i32* %4, align 4
  br label %233

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  %57 = call signext i8 @toupperW(i32 %56)
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 65
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = call i64 @isspaceW(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60, %52
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %233

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isspaceW(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  br label %69

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @strlenW(i8* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %231

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @memicmpW(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @msi_dialog_hyperlink_handler.hrefW, i64 0, i64 0), i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %231, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %9, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %112, %95
  %101 = load i8*, i8** %10, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isspaceW(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  br label %100

115:                                              ; preds = %110
  %116 = load i8*, i8** %10, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %10, align 8
  %122 = load i8, i8* %120, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 61
  br i1 %124, label %125, label %127

125:                                              ; preds = %119, %115
  %126 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %126, i32* %4, align 4
  br label %233

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %140, %127
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i64 @isspaceW(i8 signext %135)
  %137 = icmp ne i64 %136, 0
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i1 [ false, %128 ], [ %137, %133 ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %10, align 8
  br label %128

143:                                              ; preds = %138
  %144 = load i8*, i8** %10, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 34
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %10, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 39
  br i1 %152, label %153, label %157

153:                                              ; preds = %148, %143
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %10, align 8
  %156 = load i8, i8* %154, align 1
  store i8 %156, i8* %12, align 1
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i8*, i8** %10, align 8
  store i8* %158, i8** %11, align 8
  %159 = load i8, i8* %12, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %189

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %176, %161
  %163 = load i8*, i8** %11, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i8*, i8** %11, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8, i8* %12, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %170, %172
  br label %174

174:                                              ; preds = %167, %162
  %175 = phi i1 [ false, %162 ], [ %173, %167 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i8*, i8** %11, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %11, align 8
  br label %162

179:                                              ; preds = %174
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* %12, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %187, i32* %4, align 4
  br label %233

188:                                              ; preds = %179
  br label %218

189:                                              ; preds = %157
  br label %190

190:                                              ; preds = %208, %189
  %191 = load i8*, i8** %11, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load i8*, i8** %11, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 62
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i8*, i8** %11, align 8
  %202 = load i8, i8* %201, align 1
  %203 = call i64 @isspaceW(i8 signext %202)
  %204 = icmp ne i64 %203, 0
  %205 = xor i1 %204, true
  br label %206

206:                                              ; preds = %200, %195, %190
  %207 = phi i1 [ false, %195 ], [ false, %190 ], [ %205, %200 ]
  br i1 %207, label %208, label %211

208:                                              ; preds = %206
  %209 = load i8*, i8** %11, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %11, align 8
  br label %190

211:                                              ; preds = %206
  %212 = load i8*, i8** %11, align 8
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %216, i32* %4, align 4
  br label %233

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %188
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %221 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = getelementptr inbounds i8, i8* %220, i64 %226
  store i8 0, i8* %227, align 1
  %228 = load i8*, i8** %10, align 8
  %229 = load i32, i32* @SW_SHOWNORMAL, align 4
  %230 = call i32 @ShellExecuteW(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @msi_dialog_hyperlink_handler.openW, i64 0, i64 0), i8* %228, i32* null, i32* null, i32 %229)
  br label %231

231:                                              ; preds = %218, %90, %84
  %232 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %231, %215, %186, %125, %66, %50
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local signext i8 @toupperW(i32) #1

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @memicmpW(i8*, i8*, i32) #1

declare dso_local i32 @ShellExecuteW(i32*, i8*, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
