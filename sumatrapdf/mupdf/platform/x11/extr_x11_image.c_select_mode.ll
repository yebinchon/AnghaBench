; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_select_mode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MSBFirst = common dso_local global i32 0, align 4
@LSBFirst = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@BGR233 = common dso_local global i64 0, align 8
@RGB565 = common dso_local global i64 0, align 8
@RGB565_BR = common dso_local global i64 0, align 8
@RGB555 = common dso_local global i64 0, align 8
@RGB555_BR = common dso_local global i64 0, align 8
@RGB888 = common dso_local global i8* null, align 8
@BGR888 = common dso_local global i8* null, align 8
@ABGR8888 = common dso_local global i8* null, align 8
@RGBA8888 = common dso_local global i8* null, align 8
@BGRA8888 = common dso_local global i8* null, align 8
@ARGB8888 = common dso_local global i8* null, align 8
@ximage_convert_funcs = common dso_local global i32* null, align 8
@modename = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @select_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 4), align 8
  %10 = call i32 @ImageByteOrder(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = call i64 (...) @is_big_endian()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @MSBFirst, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @LSBFirst, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 3, i32 0), align 8
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 3, i32 1), align 8
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 3, i32 2), align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ffs(i64 %27)
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ffs(i64 %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ffs(i64 %35)
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* @UNKNOWN, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 0), align 8
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %44

42:                                               ; preds = %23
  %43 = load i64, i64* @BGR233, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %215

44:                                               ; preds = %23
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 0), align 8
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %84

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = icmp eq i64 %48, 63488
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %51, 2016
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %54, 31
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @RGB565, align 8
  br label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @RGB565_BR, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i64 [ %60, %59 ], [ %62, %61 ]
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %65

65:                                               ; preds = %63, %53, %50, %47
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 31744
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = icmp eq i64 %69, 992
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 31
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @RGB555, align 8
  br label %81

79:                                               ; preds = %74
  %80 = load i64, i64* @RGB555_BR, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i64 [ %78, %77 ], [ %80, %79 ]
  store i64 %82, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %83

83:                                               ; preds = %81, %71, %68, %65
  br label %214

84:                                               ; preds = %44
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 0), align 8
  %86 = icmp eq i32 %85, 24
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 16
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @MSBFirst, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** @RGB888, align 8
  br label %104

102:                                              ; preds = %96
  %103 = load i8*, i8** @BGR888, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  %106 = ptrtoint i8* %105 to i64
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %107

107:                                              ; preds = %104, %93, %90, %87
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %108, 16
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load i64, i64* %8, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @MSBFirst, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8*, i8** @BGR888, align 8
  br label %124

122:                                              ; preds = %116
  %123 = load i8*, i8** @RGB888, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i8* [ %121, %120 ], [ %123, %122 ]
  %126 = ptrtoint i8* %125 to i64
  store i64 %126, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %127

127:                                              ; preds = %124, %113, %110, %107
  br label %213

128:                                              ; preds = %84
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 0), align 8
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %212

131:                                              ; preds = %128
  %132 = load i64, i64* %6, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i64, i64* %7, align 8
  %136 = icmp eq i64 %135, 8
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i64, i64* %8, align 8
  %139 = icmp eq i64 %138, 16
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @MSBFirst, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i8*, i8** @ABGR8888, align 8
  br label %148

146:                                              ; preds = %140
  %147 = load i8*, i8** @RGBA8888, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i8* [ %145, %144 ], [ %147, %146 ]
  %150 = ptrtoint i8* %149 to i64
  store i64 %150, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %151

151:                                              ; preds = %148, %137, %134, %131
  %152 = load i64, i64* %6, align 8
  %153 = icmp eq i64 %152, 8
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load i64, i64* %7, align 8
  %156 = icmp eq i64 %155, 16
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load i64, i64* %8, align 8
  %159 = icmp eq i64 %158, 24
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* @MSBFirst, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i8*, i8** @BGRA8888, align 8
  br label %168

166:                                              ; preds = %160
  %167 = load i8*, i8** @ARGB8888, align 8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i8* [ %165, %164 ], [ %167, %166 ]
  %170 = ptrtoint i8* %169 to i64
  store i64 %170, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %171

171:                                              ; preds = %168, %157, %154, %151
  %172 = load i64, i64* %6, align 8
  %173 = icmp eq i64 %172, 16
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = load i64, i64* %7, align 8
  %176 = icmp eq i64 %175, 8
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i64, i64* %8, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* @MSBFirst, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i8*, i8** @ARGB8888, align 8
  br label %188

186:                                              ; preds = %180
  %187 = load i8*, i8** @BGRA8888, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i8* [ %185, %184 ], [ %187, %186 ]
  %190 = ptrtoint i8* %189 to i64
  store i64 %190, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %191

191:                                              ; preds = %188, %177, %174, %171
  %192 = load i64, i64* %6, align 8
  %193 = icmp eq i64 %192, 24
  br i1 %193, label %194, label %211

194:                                              ; preds = %191
  %195 = load i64, i64* %7, align 8
  %196 = icmp eq i64 %195, 16
  br i1 %196, label %197, label %211

197:                                              ; preds = %194
  %198 = load i64, i64* %8, align 8
  %199 = icmp eq i64 %198, 8
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load i32, i32* %1, align 4
  %202 = load i32, i32* @MSBFirst, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i8*, i8** @RGBA8888, align 8
  br label %208

206:                                              ; preds = %200
  %207 = load i8*, i8** @ABGR8888, align 8
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i8* [ %205, %204 ], [ %207, %206 ]
  %210 = ptrtoint i8* %209 to i64
  store i64 %210, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  br label %211

211:                                              ; preds = %208, %197, %194, %191
  br label %212

212:                                              ; preds = %211, %128
  br label %213

213:                                              ; preds = %212, %127
  br label %214

214:                                              ; preds = %213, %83
  br label %215

215:                                              ; preds = %214, %42
  %216 = load i32*, i32** @ximage_convert_funcs, align 8
  %217 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 1), align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @info, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @ImageByteOrder(i32) #1

declare dso_local i64 @is_big_endian(...) #1

declare dso_local i32 @ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
