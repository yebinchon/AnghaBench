; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_findTreeParent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_findTreeParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@DIRENTRY_RELATION_DIR = common dso_local global i32 0, align 4
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@DIRENTRY_RELATION_PREVIOUS = common dso_local global i32 0, align 4
@DIRENTRY_RELATION_NEXT = common dso_local global i32 0, align 4
@STG_E_FILENOTFOUND = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, %struct.TYPE_4__*, i64*, i32*)* @findTreeParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findTreeParent(i32* %0, i64 %1, i32* %2, %struct.TYPE_4__* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %20 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %17, i64 %18, %struct.TYPE_4__* %19)
  %21 = load i64, i64* %9, align 8
  %22 = load i64*, i64** %12, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @DIRENTRY_RELATION_DIR, align 4
  %24 = load i32*, i32** %13, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  br label %28

28:                                               ; preds = %73, %6
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* @DIRENTRY_NULL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @StorageBaseImpl_ReadDirEntry(i32* %33, i64 %34, %struct.TYPE_4__* %15)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @entryNameCmp(i32* %36, i32 %38)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %74

43:                                               ; preds = %32
  %44 = load i64, i64* %16, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %48 = bitcast %struct.TYPE_4__* %47 to i8*
  %49 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 32, i1 false)
  %50 = load i64, i64* %14, align 8
  %51 = load i64*, i64** %12, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* @DIRENTRY_RELATION_PREVIOUS, align 4
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load i64, i64* %16, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = bitcast %struct.TYPE_4__* %61 to i8*
  %63 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 32, i1 false)
  %64 = load i64, i64* %14, align 8
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* @DIRENTRY_RELATION_NEXT, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %60, %57
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72
  br label %28

74:                                               ; preds = %42, %28
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @DIRENTRY_NULL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @STG_E_FILENOTFOUND, align 4
  store i32 %79, i32* %7, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @StorageBaseImpl_ReadDirEntry(i32*, i64, %struct.TYPE_4__*) #1

declare dso_local i64 @entryNameCmp(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
