; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*, i32*)* @doDataTest1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDataTest1(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* @LSM_OK, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @testOpen(i8* %16, i32 1, i32* %11)
  store i32* %17, i32** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = call i32* @testDatasourceNew(i32* %19)
  store i32* %20, i32** %12, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %81, %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @LSM_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %103

33:                                               ; preds = %31
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @testWriteDatasourceRange(i32* %34, i32* %35, i32 %36, i32 %39, i32* %11)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @testBegin(i32* %49, i32 1, i32* %11)
  br label %51

51:                                               ; preds = %48, %33
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @testDbContents(i32* %52, i32* %53, i32 %56, i32 0, i32 %58, i32 %61, i32 %64, i32* %11)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @testCommit(i32* %69, i32 0, i32* %11)
  br label %71

71:                                               ; preds = %68, %51
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  %74 = srem i32 %73, 2
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @testReopenRecover(i32** %13, i32* %11)
  br label %81

79:                                               ; preds = %71
  %80 = call i32 @testReopen(i32** %13, i32* %11)
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @testDbContents(i32* %82, i32* %83, i32 %86, i32 0, i32 %88, i32 %91, i32 %94, i32* %11)
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (...) @testCaseNDot()
  %101 = sdiv i32 %100, 2
  %102 = call i32 @testCaseProgress(i32 %96, i32 %99, i32 %101, i32* %10)
  br label %21

103:                                              ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %152, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @LSM_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br label %114

114:                                              ; preds = %108, %104
  %115 = phi i1 [ false, %104 ], [ %113, %108 ]
  br i1 %115, label %116, label %177

116:                                              ; preds = %114
  %117 = load i32*, i32** %13, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @testDeleteDatasourceRange(i32* %117, i32* %118, i32 %119, i32 %122, i32* %11)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @testDbContents(i32* %129, i32* %130, i32 %133, i32 %134, i32 %138, i32 %141, i32 %144, i32* %11)
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %116
  %149 = call i32 @testReopenRecover(i32** %13, i32* %11)
  br label %152

150:                                              ; preds = %116
  %151 = call i32 @testReopen(i32** %13, i32* %11)
  br label %152

152:                                              ; preds = %150, %148
  %153 = load i32*, i32** %13, align 8
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @testDbContents(i32* %153, i32* %154, i32 %157, i32 %158, i32 %162, i32 %165, i32 %168, i32* %11)
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (...) @testCaseNDot()
  %175 = sdiv i32 %174, 2
  %176 = call i32 @testCaseProgress(i32 %170, i32 %173, i32 %175, i32* %10)
  br label %104

177:                                              ; preds = %114
  %178 = load i32*, i32** %12, align 8
  %179 = call i32 @testDatasourceFree(i32* %178)
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @tdb_close(i32* %180)
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @testCaseFinish(i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %8, align 8
  store i32 %184, i32* %185, align 4
  ret void
}

declare dso_local i32* @testOpen(i8*, i32, i32*) #1

declare dso_local i32* @testDatasourceNew(i32*) #1

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testBegin(i32*, i32, i32*) #1

declare dso_local i32 @testDbContents(i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @testCommit(i32*, i32, i32*) #1

declare dso_local i32 @testReopenRecover(i32**, i32*) #1

declare dso_local i32 @testReopen(i32**, i32*) #1

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #1

declare dso_local i32 @testCaseNDot(...) #1

declare dso_local i32 @testDeleteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

declare dso_local i32 @tdb_close(i32*) #1

declare dso_local i32 @testCaseFinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
