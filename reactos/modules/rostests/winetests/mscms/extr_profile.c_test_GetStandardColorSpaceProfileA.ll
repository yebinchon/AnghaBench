; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetStandardColorSpaceProfileA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetStandardColorSpaceProfileA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@machine = common dso_local global i32* null, align 8
@LCS_sRGB = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"GetStandardColorSpaceProfileA() returns %d (GLE=%d)\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"GetStandardColorSpaceProfileA() failed (%d)\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Not enough rights for SetStandardColorSpaceProfileA\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SetStandardColorSpaceProfileA() failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_GetStandardColorSpaceProfileA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetStandardColorSpaceProfileA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = trunc i64 %14 to i32
  store i32 %16, i32* %4, align 4
  %17 = call i32 @SetLastError(i32 -87118866)
  %18 = load i32*, i32** @machine, align 8
  %19 = load i32, i32* @LCS_sRGB, align 4
  %20 = call i32 @pGetStandardColorSpaceProfileA(i32* %18, i32 %19, i8* %15, i32* %4)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 (...) @GetLastError()
  %25 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i1 [ false, %1 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = trunc i64 %14 to i32
  store i32 %33, i32* %4, align 4
  %34 = call i32 @SetLastError(i32 -87118866)
  %35 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 -1, i8* %15, i32* %4)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = call i32 (...) @GetLastError()
  %40 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %27
  %43 = phi i1 [ false, %27 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = trunc i64 %14 to i32
  store i32 %48, i32* %4, align 4
  %49 = call i32 @SetLastError(i32 -87118866)
  %50 = load i32, i32* @LCS_sRGB, align 4
  %51 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 %50, i8* %15, i32* null)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = call i32 (...) @GetLastError()
  %56 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %42
  %59 = phi i1 [ false, %42 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = trunc i64 %14 to i32
  store i32 %64, i32* %4, align 4
  %65 = call i32 @SetLastError(i32 -87118866)
  %66 = load i32, i32* @LCS_sRGB, align 4
  %67 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 %66, i8* null, i32* %4)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = call i32 (...) @GetLastError()
  %72 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %70, %58
  %75 = phi i1 [ false, %58 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  store i32 0, i32* %4, align 4
  %80 = call i32 @SetLastError(i32 -87118866)
  %81 = load i32, i32* @LCS_sRGB, align 4
  %82 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 %81, i8* %15, i32* %4)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %74
  %86 = call i32 (...) @GetLastError()
  %87 = load i32, i32* @ERROR_MORE_DATA, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = call i32 (...) @GetLastError()
  %91 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ true, %85 ], [ %92, %89 ]
  br label %95

95:                                               ; preds = %93, %74
  %96 = phi i1 [ false, %74 ], [ %94, %93 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %3, align 4
  %99 = call i32 (...) @GetLastError()
  %100 = call i32 (i32, i8*, i32, ...) @ok(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  store i32 0, i32* %4, align 4
  %101 = call i32 @SetLastError(i32 -87118866)
  %102 = load i32*, i32** @machine, align 8
  %103 = call i32 @pGetStandardColorSpaceProfileA(i32* %102, i32 0, i8* %15, i32* %4)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %95
  %107 = call i32 (...) @GetLastError()
  %108 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = call i32 (...) @GetLastError()
  %112 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ true, %106 ], [ %113, %110 ]
  br label %116

116:                                              ; preds = %114, %95
  %117 = phi i1 [ false, %95 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120)
  %122 = call i32 @SetLastError(i32 -87118866)
  %123 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 0, i8* %15, i32* null)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %116
  %127 = call i32 (...) @GetLastError()
  %128 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %129 = icmp eq i32 %127, %128
  br label %130

130:                                              ; preds = %126, %116
  %131 = phi i1 [ false, %116 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %3, align 4
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, i32, ...) @ok(i32 %132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  store i32 0, i32* %4, align 4
  %136 = call i32 @SetLastError(i32 -87118866)
  %137 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 0, i8* null, i32* %4)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %130
  %141 = call i32 (...) @GetLastError()
  %142 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = call i32 (...) @GetLastError()
  %146 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %147 = icmp eq i32 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ true, %140 ], [ %147, %144 ]
  br label %150

150:                                              ; preds = %148, %130
  %151 = phi i1 [ false, %130 ], [ %149, %148 ]
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %3, align 4
  %154 = call i32 (...) @GetLastError()
  %155 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %154)
  %156 = trunc i64 %14 to i32
  store i32 %156, i32* %4, align 4
  %157 = call i32 @SetLastError(i32 -87118866)
  %158 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 0, i8* %15, i32* %4)
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %150
  %162 = call i32 (...) @GetLastError()
  %163 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %3, align 4
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i32, i8*, i32, ...) @ok(i32 %165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %166, i32 %167)
  br label %181

169:                                              ; preds = %150
  %170 = call i32 @lstrcmpiA(i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = call i32 (...) @GetLastError()
  %174 = icmp eq i32 %173, -87118866
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi i1 [ false, %169 ], [ %174, %172 ]
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %3, align 4
  %179 = call i32 (...) @GetLastError()
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %177, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %161
  %182 = trunc i64 %10 to i32
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* @LCS_sRGB, align 4
  %184 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 %183, i8* %12, i32* %4)
  store i32 %184, i32* %3, align 4
  %185 = load i32, i32* %3, align 4
  %186 = call i32 (...) @GetLastError()
  %187 = call i32 (i32, i8*, i32, ...) @ok(i32 %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = call i32 @SetLastError(i32 -559038737)
  %189 = load i32, i32* @LCS_sRGB, align 4
  %190 = load i8*, i8** %2, align 8
  %191 = call i32 @pSetStandardColorSpaceProfileA(i32* null, i32 %189, i8* %190)
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %181
  %195 = call i32 (...) @GetLastError()
  %196 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %215

200:                                              ; preds = %194, %181
  %201 = load i32, i32* %3, align 4
  %202 = call i32 (...) @GetLastError()
  %203 = call i32 (i32, i8*, i32, ...) @ok(i32 %201, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = trunc i64 %14 to i32
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* @LCS_sRGB, align 4
  %206 = call i32 @pGetStandardColorSpaceProfileA(i32* null, i32 %205, i8* %15, i32* %4)
  store i32 %206, i32* %3, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 (...) @GetLastError()
  %209 = call i32 (i32, i8*, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @LCS_sRGB, align 4
  %211 = call i32 @pSetStandardColorSpaceProfileA(i32* null, i32 %210, i8* %12)
  store i32 %211, i32* %3, align 4
  %212 = load i32, i32* %3, align 4
  %213 = call i32 (...) @GetLastError()
  %214 = call i32 (i32, i8*, i32, ...) @ok(i32 %212, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %200, %198
  %216 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %8, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetStandardColorSpaceProfileA(i32*, i32, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @pSetStandardColorSpaceProfileA(i32*, i32, i8*) #2

declare dso_local i32 @skip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
