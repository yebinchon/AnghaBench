; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_SHExtractIcons.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_SHExtractIcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SHExtractIcons.notepadW = internal constant [12 x i8] c"notepad.exe\00", align 1
@test_SHExtractIcons.shell32W = internal constant [12 x i8] c"shell32.dll\00", align 1
@test_SHExtractIcons.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"icon not set\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"id not set\0A\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"icon count should be independent of requested icon sizes and base icon index\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHExtractIcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHExtractIcons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i64], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %7 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %8 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_SHExtractIcons.emptyW, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %6, i32* %7, i32 1, i32 0)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %1, align 4
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.notepadW, i64 0, i64 0), i32 0, i32 16, i32 16, i64* null, i32* null, i32 1, i32 0)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %23, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i32
  %21 = call i64 @broken(i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %0
  %24 = phi i1 [ true, %0 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  store i64 3735928559, i64* %28, align 16
  %29 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %30 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.notepadW, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %29, i32* null, i32 1, i32 0)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %1, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = icmp ne i64 %37, 3735928559
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %41 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = call i32 @DestroyIcon(i64 %42)
  %44 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  store i64 3735928559, i64* %44, align 16
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  store i32 -559038737, i32* %45, align 16
  %46 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %48 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.notepadW, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %46, i32* %47, i32 1, i32 0)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %1, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = icmp ne i64 %55, 3735928559
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = icmp ne i32 %60, -559038737
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = call i32 @DestroyIcon(i64 %65)
  %67 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 0, i32 16, i32 16, i64* null, i32* null, i32 0, i32 0)
  store i32 %67, i32* %1, align 4
  %68 = call i32 @MAKELONG(i32 32, i32 16)
  %69 = call i32 @MAKELONG(i32 32, i32 16)
  %70 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 4, i32 %68, i32 %69, i64* null, i32* null, i32 256, i32 0)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %23
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %23
  %78 = phi i1 [ false, %23 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %81 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %83 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %81, i32* %82, i32 0, i32 0)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %90, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %1, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %77
  %91 = phi i1 [ true, %77 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %1, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %97 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 0, i32 16, i32 16, i64* %95, i32* %96, i32 3, i32 0)
  store i32 %97, i32* %1, align 4
  %98 = load i32, i32* %1, align 4
  %99 = icmp eq i32 %98, 3
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %1, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %113, %90
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %1, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @DestroyIcon(i64 %111)
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %5, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %103

116:                                              ; preds = %103
  %117 = call i32 @MAKELONG(i32 16, i32 32)
  %118 = call i32 @MAKELONG(i32 16, i32 32)
  %119 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %121 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 0, i32 %117, i32 %118, i64* %119, i32* %120, i32 3, i32 0)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* %1, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %1, align 4
  %126 = icmp eq i32 %125, 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = phi i1 [ true, %116 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %1, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %130)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %142, %127
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %1, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @DestroyIcon(i64 %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %5, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %132

145:                                              ; preds = %132
  %146 = call i32 @MAKELONG(i32 16, i32 32)
  %147 = call i32 @MAKELONG(i32 16, i32 32)
  %148 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 0
  %149 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %150 = call i32 @pSHExtractIconsW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHExtractIcons.shell32W, i64 0, i64 0), i32 0, i32 %146, i32 %147, i64* %148, i32* %149, i32 4, i32 0)
  store i32 %150, i32* %1, align 4
  %151 = load i32, i32* %1, align 4
  %152 = icmp eq i32 %151, 4
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %154)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %166, %145
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %1, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @DestroyIcon(i64 %164)
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %5, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %156

169:                                              ; preds = %156
  ret void
}

declare dso_local i32 @pSHExtractIconsW(i8*, i32, i32, i32, i64*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @DestroyIcon(i64) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
