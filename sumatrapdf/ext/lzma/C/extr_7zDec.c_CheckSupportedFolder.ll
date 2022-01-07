; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zDec.c_CheckSupportedFolder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_7zDec.c_CheckSupportedFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64*, i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @CheckSupportedFolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSupportedFolder(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %15, i32* %2, align 4
  br label %239

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %21 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %24, i32* %2, align 4
  br label %239

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %35, %30
  %48 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %48, i32* %2, align 4
  br label %239

49:                                               ; preds = %42
  %50 = load i32, i32* @SZ_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %239

51:                                               ; preds = %25
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %119

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 1
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 4294967295
  br i1 %64, label %108, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %108, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %108, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %108, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %108, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %108, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100, %92, %87, %80, %75, %70, %65, %56
  %109 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %109, i32* %2, align 4
  br label %239

110:                                              ; preds = %100
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  switch i64 %113, label %115 [
    i64 128, label %114
    i64 129, label %114
  ]

114:                                              ; preds = %110, %110
  br label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %116, i32* %2, align 4
  br label %239

117:                                              ; preds = %114
  %118 = load i32, i32* @SZ_OK, align 4
  store i32 %118, i32* %2, align 4
  br label %239

119:                                              ; preds = %51
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %237

124:                                              ; preds = %119
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 1
  %129 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 2
  %136 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 3
  %143 = call i32 @IS_BCJ2(%struct.TYPE_9__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %138, %131, %124
  %146 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %146, i32* %2, align 4
  br label %239

147:                                              ; preds = %138
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 4
  br i1 %151, label %233, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 2
  br i1 %158, label %233, label %159

159:                                              ; preds = %152
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 6
  br i1 %165, label %233, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 1
  br i1 %172, label %233, label %173

173:                                              ; preds = %166
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %233, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 3
  br i1 %184, label %233, label %185

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 5
  br i1 %192, label %233, label %193

193:                                              ; preds = %185
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %233, label %201

201:                                              ; preds = %193
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 4
  br i1 %208, label %233, label %209

209:                                              ; preds = %201
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 1
  br i1 %216, label %233, label %217

217:                                              ; preds = %209
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 2
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 3
  br i1 %224, label %233, label %225

225:                                              ; preds = %217
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 2
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 2
  br i1 %232, label %233, label %235

233:                                              ; preds = %225, %217, %209, %201, %193, %185, %180, %173, %166, %159, %152, %147
  %234 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %234, i32* %2, align 4
  br label %239

235:                                              ; preds = %225
  %236 = load i32, i32* @SZ_OK, align 4
  store i32 %236, i32* %2, align 4
  br label %239

237:                                              ; preds = %119
  %238 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %237, %235, %233, %145, %117, %115, %108, %49, %47, %23, %14
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__*) #1

declare dso_local i32 @IS_BCJ2(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
