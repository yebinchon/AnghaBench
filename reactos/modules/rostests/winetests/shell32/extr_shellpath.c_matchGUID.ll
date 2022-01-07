; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_matchGUID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_matchGUID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }

@S_OK = common dso_local global i64 0, align 8
@PT_SHELLEXT = common dso_local global i64 0, align 8
@PT_GUID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s: got GUID %s, expected %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: got GUID %s, expected %s or %s\0A\00", align 1
@pMalloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @matchGUID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matchGUID(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %91

14:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @pSHGetFolderLocation(i32* null, i32 %15, i32* null, i32 0, %struct.TYPE_8__** %7)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call %struct.TYPE_8__* @pILFindLastID(%struct.TYPE_8__* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %87

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PT_SHELLEXT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PT_GUID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %34, %25
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = bitcast i64* %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %43
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @IsEqualIID(i32* %53, i32* %54)
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @getFolderName(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @wine_dbgstr_guid(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @wine_dbgstr_guid(i32* %61)
  %63 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60, i32 %62)
  br label %86

64:                                               ; preds = %43
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @IsEqualIID(i32* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @IsEqualIID(i32* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @getFolderName(i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @wine_dbgstr_guid(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @wine_dbgstr_guid(i32* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @wine_dbgstr_guid(i32* %83)
  %85 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %74, %52
  br label %87

87:                                               ; preds = %86, %34, %20
  %88 = load i32, i32* @pMalloc, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = call i32 @IMalloc_Free(i32 %88, %struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %13, %87, %14
  ret void
}

declare dso_local i64 @pSHGetFolderLocation(i32*, i32, i32*, i32, %struct.TYPE_8__**) #1

declare dso_local %struct.TYPE_8__* @pILFindLastID(%struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @IsEqualIID(i32*, i32*) #1

declare dso_local i32 @getFolderName(i32) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @IMalloc_Free(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
