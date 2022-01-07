; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkRequired.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkRequired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64*, %struct.TYPE_16__*, i32, %struct.TYPE_16__* }

@SQLITE_ForeignKeys = common dso_local global i32 0, align 4
@OE_None = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3FkRequired(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SQLITE_ForeignKeys, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = call %struct.TYPE_16__* @sqlite3FkReferences(%struct.TYPE_14__* %24)
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ true, %23 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  br label %94

35:                                               ; preds = %20
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %11, align 8
  br label %39

39:                                               ; preds = %61, %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = icmp ne %struct.TYPE_16__* %40, null
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @sqlite3_stricmp(i32 %45, i32 %48)
  %50 = icmp eq i64 0, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 2, i32* %5, align 4
  br label %97

52:                                               ; preds = %42
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @fkChildIsModified(%struct.TYPE_14__* %53, %struct.TYPE_16__* %54, i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %11, align 8
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call %struct.TYPE_16__* @sqlite3FkReferences(%struct.TYPE_14__* %66)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %11, align 8
  br label %68

68:                                               ; preds = %89, %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %70 = icmp ne %struct.TYPE_16__* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @fkParentIsModified(%struct.TYPE_14__* %72, %struct.TYPE_16__* %73, i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @OE_None, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 2, i32* %5, align 4
  br label %97

87:                                               ; preds = %78
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %11, align 8
  br label %68

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %32
  br label %95

95:                                               ; preds = %94, %4
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %86, %51
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_16__* @sqlite3FkReferences(%struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3_stricmp(i32, i32) #1

declare dso_local i64 @fkChildIsModified(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @fkParentIsModified(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
