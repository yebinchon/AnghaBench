; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strtok.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@testcases_strtok = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"string (%p) '%s' return %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"second call string (%p) '%s' return %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"third call string (%p) '%s' return %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strtok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strtok() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %165, %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %168

12:                                               ; preds = %4
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strcpy(i8* %13, i64 %19)
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @strtok(i8* %21, i32 %27)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %12
  %43 = load i8*, i8** %2, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br label %53

53:                                               ; preds = %45, %42
  %54 = phi i1 [ false, %42 ], [ %52, %45 ]
  br label %55

55:                                               ; preds = %53, %12
  %56 = phi i1 [ true, %12 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %58, i64 %64, i8* %65)
  %67 = load i8*, i8** %2, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %55
  br label %165

70:                                               ; preds = %55
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @strtok(i8* null, i32 %76)
  store i8* %77, i8** %2, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %104, label %91

91:                                               ; preds = %70
  %92 = load i8*, i8** %2, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, -1
  br label %102

102:                                              ; preds = %94, %91
  %103 = phi i1 [ false, %91 ], [ %101, %94 ]
  br label %104

104:                                              ; preds = %102, %70
  %105 = phi i1 [ true, %70 ], [ %103, %102 ]
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i8*, i8** %2, align 8
  %115 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %107, i64 %113, i8* %114)
  %116 = load i8*, i8** %2, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %104
  br label %165

119:                                              ; preds = %104
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @strtok(i8* null, i32 %125)
  store i8* %126, i8** %2, align 8
  %127 = load i8*, i8** %2, align 8
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %132, %138
  br i1 %139, label %153, label %140

140:                                              ; preds = %119
  %141 = load i8*, i8** %2, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, -1
  br label %151

151:                                              ; preds = %143, %140
  %152 = phi i1 [ false, %140 ], [ %150, %143 ]
  br label %153

153:                                              ; preds = %151, %119
  %154 = phi i1 [ true, %119 ], [ %152, %151 ]
  %155 = zext i1 %154 to i32
  %156 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @testcases_strtok, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i8*, i8** %2, align 8
  %164 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %156, i64 %162, i8* %163)
  br label %165

165:                                              ; preds = %153, %118, %69
  %166 = load i32, i32* %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %1, align 4
  br label %4

168:                                              ; preds = %4
  ret void
}

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
