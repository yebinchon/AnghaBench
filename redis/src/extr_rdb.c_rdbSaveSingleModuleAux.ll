; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveSingleModuleAux.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveSingleModuleAux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@RDB_OPCODE_MODULE_AUX = common dso_local global i32 0, align 4
@RDB_MODULE_OPCODE_UINT = common dso_local global i32 0, align 4
@RDB_MODULE_OPCODE_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveSingleModuleAux(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @RDB_OPCODE_MODULE_AUX, align 4
  %12 = call i32 @rdbSaveType(i32* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rdbSaveLen(i32* %13, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, %22
  store i32 %25, i32* %23, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @RDB_MODULE_OPCODE_UINT, align 4
  %28 = call i32 @rdbSaveLen(i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %92

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %34, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rdbSaveLen(i32* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %92

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %44
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = bitcast %struct.TYPE_8__* %8 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @moduleInitIOContext(i64 %52, i64 %54, %struct.TYPE_7__* %48, i32* %49, i32* null)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 %58(%struct.TYPE_8__* %8, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @RDB_MODULE_OPCODE_EOF, align 4
  %63 = call i32 @rdbSaveLen(i32* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %73

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, %69
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %68, %66
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @moduleFreeContext(i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @zfree(i64 %82)
  br label %84

84:                                               ; preds = %77, %73
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %88, %42, %31, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @rdbSaveType(i32*, i32) #1

declare dso_local i32 @rdbSaveLen(i32*, i32) #1

declare dso_local i32 @moduleInitIOContext(i64, i64, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @moduleFreeContext(i64) #1

declare dso_local i32 @zfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
