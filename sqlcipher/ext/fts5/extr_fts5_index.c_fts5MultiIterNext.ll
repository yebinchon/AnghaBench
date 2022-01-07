; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, %struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, i32*)*, i64 }
%struct.TYPE_21__ = type { i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32)* @fts5MultiIterNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MultiIterNext(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %145, %4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SQLITE_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %146

27:                                               ; preds = %21
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i64 %38
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %12, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SQLITE_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %27
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @fts5SegIterNextFrom(%struct.TYPE_25__* %55, %struct.TYPE_23__* %56, i32 %57)
  br label %66

59:                                               ; preds = %49, %27
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, i32*)*, i32 (%struct.TYPE_25__*, %struct.TYPE_23__*, i32*)** %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %65 = call i32 %62(%struct.TYPE_25__* %63, %struct.TYPE_23__* %64, i32* %11)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @fts5MultiIterAdvanceRowid(%struct.TYPE_24__* %75, i32 %76, %struct.TYPE_23__** %12)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %74, %71, %66
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @fts5MultiIterAdvanced(%struct.TYPE_25__* %80, %struct.TYPE_24__* %81, i32 %82, i32 1)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %85 = call i32 @fts5MultiIterSetEof(%struct.TYPE_24__* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i64 %95
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %12, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %79
  br label %146

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %74
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = call i32 @fts5AssertMultiIterSetup(%struct.TYPE_25__* %104, %struct.TYPE_24__* %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i64 %117
  %119 = icmp eq %struct.TYPE_23__* %107, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %103
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %103
  %126 = phi i1 [ false, %103 ], [ %124, %120 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133, %125
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)** %140, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %144 = call i32 %141(%struct.TYPE_24__* %142, %struct.TYPE_23__* %143)
  br label %146

145:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %21

146:                                              ; preds = %101, %138, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5SegIterNextFrom(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @fts5MultiIterAdvanceRowid(%struct.TYPE_24__*, i32, %struct.TYPE_23__**) #1

declare dso_local i32 @fts5MultiIterAdvanced(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @fts5MultiIterSetEof(%struct.TYPE_24__*) #1

declare dso_local i32 @fts5AssertMultiIterSetup(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
