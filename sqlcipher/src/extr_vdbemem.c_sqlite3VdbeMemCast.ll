; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemCast.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemCast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@MEM_Null = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@SQLITE_AFF_TEXT = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@MEM_TypeMask = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeMemCast(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MEM_Null, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %131

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %76 [
    i32 131, label %16
    i32 129, label %67
    i32 130, label %70
    i32 128, label %73
  ]

16:                                               ; preds = %14
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MEM_Blob, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %16
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* @SQLITE_AFF_TEXT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_10__* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MEM_Str, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %23
  %42 = phi i1 [ true, %23 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MEM_Str, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* @MEM_Blob, align 4
  %54 = call i32 @MemSetTypeFlag(%struct.TYPE_10__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  br label %66

56:                                               ; preds = %16
  %57 = load i32, i32* @MEM_TypeMask, align 4
  %58 = load i32, i32* @MEM_Blob, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %56, %55
  br label %131

67:                                               ; preds = %14
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_10__* %68)
  br label %131

70:                                               ; preds = %14
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = call i32 @sqlite3VdbeMemIntegerify(%struct.TYPE_10__* %71)
  br label %131

73:                                               ; preds = %14
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = call i32 @sqlite3VdbeMemRealify(%struct.TYPE_10__* %74)
  br label %131

76:                                               ; preds = %14
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SQLITE_AFF_TEXT, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* @MEM_Str, align 4
  %83 = load i32, i32* @MEM_Blob, align 4
  %84 = ashr i32 %83, 3
  %85 = icmp eq i32 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MEM_Blob, align 4
  %92 = and i32 %90, %91
  %93 = ashr i32 %92, 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = load i32, i32* @SQLITE_AFF_TEXT, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_10__* %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MEM_Str, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %76
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %108, %76
  %116 = phi i1 [ true, %76 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32, i32* @MEM_Int, align 4
  %120 = load i32, i32* @MEM_Real, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MEM_Blob, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MEM_Zero, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %13, %115, %73, %70, %67, %66
  ret void
}

declare dso_local i32 @sqlite3ValueApplyAffinity(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemNumerify(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeMemIntegerify(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeMemRealify(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
