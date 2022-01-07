; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_peephole.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_peephole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@IAny = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @peephole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peephole(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %90, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %64, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %88 [
    i32 138, label %27
    i32 139, label %27
    i32 137, label %27
    i32 132, label %27
    i32 140, label %27
    i32 129, label %27
    i32 128, label %27
    i32 130, label %27
    i32 133, label %34
  ]

27:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @finallabel(%struct.TYPE_12__* %30, i32 %31)
  %33 = call i32 @jumptothere(%struct.TYPE_13__* %28, i32 %29, i32 %32)
  br label %89

34:                                               ; preds = %19
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @finaltarget(%struct.TYPE_12__* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %82 [
    i32 131, label %45
    i32 135, label %45
    i32 134, label %45
    i32 136, label %45
    i32 137, label %64
    i32 132, label %64
    i32 140, label %64
  ]

45:                                               ; preds = %34, %34, %34, %34
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  %54 = bitcast %struct.TYPE_12__* %49 to i8*
  %55 = bitcast %struct.TYPE_12__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load i32, i32* @IAny, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  br label %87

64:                                               ; preds = %34, %34, %34
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @finallabel(%struct.TYPE_12__* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = bitcast %struct.TYPE_12__* %71 to i8*
  %77 = bitcast %struct.TYPE_12__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @jumptothere(%struct.TYPE_13__* %78, i32 %79, i32 %80)
  br label %19

82:                                               ; preds = %34
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @jumptothere(%struct.TYPE_13__* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %45
  br label %89

88:                                               ; preds = %19
  br label %89

89:                                               ; preds = %88, %87, %27
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %93
  %95 = call i64 @sizei(%struct.TYPE_12__* %94)
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  br label %12

100:                                              ; preds = %12
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 136
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  ret void
}

declare dso_local i32 @jumptothere(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @finallabel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @finaltarget(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sizei(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
