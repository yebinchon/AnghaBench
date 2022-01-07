; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_ShellValues.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_ShellValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shellExpectedValues = type { i32, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@pSHGetFolderLocation = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s has unexpected type %d (0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shellExpectedValues*, i32, i64)* @test_ShellValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ShellValues(%struct.shellExpectedValues* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.shellExpectedValues*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.shellExpectedValues* %0, %struct.shellExpectedValues** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %171, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %174

15:                                               ; preds = %11
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* @pSHGetFolderLocation, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %20, i64 %22
  %24 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @testSHGetFolderLocation(i32 %25)
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %57, %19
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %32, i64 %34
  %36 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %31, %37
  br label %39

39:                                               ; preds = %30, %27
  %40 = phi i1 [ false, %27 ], [ %38, %30 ]
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %42, i64 %44
  %46 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %54, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %27

60:                                               ; preds = %39
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 255
  %69 = zext i1 %68 to i32
  %70 = call i64 @broken(i32 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %66, %63, %60
  %73 = phi i1 [ true, %63 ], [ true, %60 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %75, i64 %77
  %79 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @getFolderName(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %15
  %86 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %86, i64 %88
  %90 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @testSHGetSpecialFolderLocation(i32 %91)
  store i32 %92, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %93 = load i64, i64* @FALSE, align 8
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %124, %85
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %99, i64 %101
  %103 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %98, %104
  br label %106

106:                                              ; preds = %97, %94
  %107 = phi i1 [ false, %94 ], [ %105, %97 ]
  br i1 %107, label %108, label %127

108:                                              ; preds = %106
  %109 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %109, i64 %111
  %113 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %121, %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %94

127:                                              ; preds = %106
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %6, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 255
  %136 = zext i1 %135 to i32
  %137 = call i64 @broken(i32 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %133, %130, %127
  %140 = phi i1 [ true, %130 ], [ true, %127 ], [ %138, %133 ]
  %141 = zext i1 %140 to i32
  %142 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %142, i64 %144
  %146 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @getFolderName(i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %8, align 4
  switch i32 %152, label %170 [
    i32 129, label %153
    i32 131, label %153
    i32 130, label %153
    i32 128, label %153
  ]

153:                                              ; preds = %139, %139, %139, %139
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %155, i64 %157
  %159 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @test_SHGetFolderPath(i64 %154, i32 %160)
  %162 = load i64, i64* %6, align 8
  %163 = load %struct.shellExpectedValues*, %struct.shellExpectedValues** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %163, i64 %165
  %167 = getelementptr inbounds %struct.shellExpectedValues, %struct.shellExpectedValues* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @test_SHGetSpecialFolderPath(i64 %162, i32 %168)
  br label %170

170:                                              ; preds = %139, %153
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %11

174:                                              ; preds = %11
  ret void
}

declare dso_local i32 @testSHGetFolderLocation(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @getFolderName(i32) #1

declare dso_local i32 @testSHGetSpecialFolderLocation(i32) #1

declare dso_local i32 @test_SHGetFolderPath(i64, i32) #1

declare dso_local i32 @test_SHGetSpecialFolderPath(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
