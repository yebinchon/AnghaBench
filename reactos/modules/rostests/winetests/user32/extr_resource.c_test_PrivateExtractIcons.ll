; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_PrivateExtractIcons.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_PrivateExtractIcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_PrivateExtractIcons.szShell32Dll = private unnamed_addr constant [12 x i8] c"shell32.dll\00", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"notepad.exe\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"icon not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"id not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"Icon count should be independent of requested icon sizes and base icon index! (cIcons=%d, cIcons2=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Zero icons requested, got cIcons=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Three icons requested got cIcons=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Four icons requested got cIcons=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PrivateExtractIcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PrivateExtractIcons() #0 {
  %1 = alloca [12 x i8], align 1
  %2 = alloca [256 x i64], align 16
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [12 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_PrivateExtractIcons.szShell32Dll, i32 0, i32 0), i64 12, i1 false)
  %8 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %10 = call i32 @pPrivateExtractIconsA(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %8, i32* %9, i32 1, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @pPrivateExtractIconsA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 16, i32 16, i64* null, i32* null, i32 1, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 2
  %22 = zext i1 %21 to i32
  %23 = call i64 @broken(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %0
  %26 = phi i1 [ true, %0 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  store i64 3735928559, i64* %30, align 16
  %31 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %32 = call i32 @pPrivateExtractIconsA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %31, i32* null, i32 1, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %39 = load i64, i64* %38, align 16
  %40 = icmp ne i64 %39, 3735928559
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %43 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = call i32 @DestroyIcon(i64 %44)
  %46 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  store i64 3735928559, i64* %46, align 16
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  store i32 -559038737, i32* %47, align 16
  %48 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %50 = call i32 @pPrivateExtractIconsA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %48, i32* %49, i32 1, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %57 = load i64, i64* %56, align 16
  %58 = icmp ne i64 %57, 3735928559
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = icmp ne i32 %62, -559038737
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = call i32 @DestroyIcon(i64 %67)
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %70 = call i32 @pPrivateExtractIconsA(i8* %69, i32 0, i32 16, i32 16, i64* null, i32* null, i32 0, i32 0)
  store i32 %70, i32* %5, align 4
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %72 = call i32 @MAKELONG(i32 32, i32 16)
  %73 = call i32 @MAKELONG(i32 32, i32 16)
  %74 = call i32 @pPrivateExtractIconsA(i8* %71, i32 4, i32 %72, i32 %73, i64* null, i32* null, i32 256, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %25
  %79 = load i32, i32* %5, align 4
  %80 = icmp ugt i32 %79, 0
  br label %81

81:                                               ; preds = %78, %25
  %82 = phi i1 [ false, %25 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %88 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %90 = call i32 @pPrivateExtractIconsA(i8* %87, i32 0, i32 16, i32 16, i64* %88, i32* %89, i32 0, i32 0)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %97 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %99 = call i32 @pPrivateExtractIconsA(i8* %96, i32 0, i32 16, i32 16, i64* %97, i32* %98, i32 3, i32 0)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 3
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %115, %81
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @DestroyIcon(i64 %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %3, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %105

118:                                              ; preds = %105
  %119 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %120 = call i32 @MAKELONG(i32 16, i32 32)
  %121 = call i32 @MAKELONG(i32 16, i32 32)
  %122 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %124 = call i32 @pPrivateExtractIconsA(i8* %119, i32 0, i32 %120, i32 %121, i64* %122, i32* %123, i32 3, i32 0)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 4
  br label %130

130:                                              ; preds = %127, %118
  %131 = phi i1 [ true, %118 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %145, %130
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @DestroyIcon(i64 %143)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %3, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %135

148:                                              ; preds = %135
  %149 = getelementptr inbounds [12 x i8], [12 x i8]* %1, i64 0, i64 0
  %150 = call i32 @MAKELONG(i32 16, i32 32)
  %151 = call i32 @MAKELONG(i32 16, i32 32)
  %152 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 0
  %153 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %154 = call i32 @pPrivateExtractIconsA(i8* %149, i32 0, i32 %150, i32 %151, i64* %152, i32* %153, i32 4, i32 0)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 4
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %170, %148
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %3, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [256 x i64], [256 x i64]* %2, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @DestroyIcon(i64 %168)
  br label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %3, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %160

173:                                              ; preds = %160
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pPrivateExtractIconsA(i8*, i32, i32, i32, i64*, i32*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @DestroyIcon(i64) #2

declare dso_local i32 @MAKELONG(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
