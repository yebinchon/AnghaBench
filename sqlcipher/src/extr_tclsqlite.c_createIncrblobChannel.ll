; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_createIncrblobChannel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_createIncrblobChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i64 }

@TCL_READABLE = common dso_local global i32 0, align 4
@TCL_WRITABLE = common dso_local global i32 0, align 4
@createIncrblobChannel.count = internal global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@TCL_VOLATILE = common dso_local global i32 0, align 4
@TCL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"incrblob_%d\00", align 1
@IncrblobChannelType = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i8*, i8*, i8*, i32, i32)* @createIncrblobChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createIncrblobChannel(i32* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [64 x i8], align 16
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %17, align 8
  %25 = load i32, i32* @TCL_READABLE, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @TCL_WRITABLE, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  %33 = or i32 %25, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32*, i32** %17, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @sqlite3_blob_open(i32* %34, i8* %35, i8* %36, i8* %37, i32 %38, i32 %42, i32** %18)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_errmsg(i32* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* @TCL_VOLATILE, align 4
  %55 = call i32 @Tcl_SetResult(i32* %48, i8* %53, i32 %54)
  %56 = load i32, i32* @TCL_ERROR, align 4
  store i32 %56, i32* %8, align 4
  br label %113

57:                                               ; preds = %31
  %58 = call i64 @Tcl_Alloc(i32 48)
  %59 = inttoptr i64 %58 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %16, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %66 = load i32, i32* @createIncrblobChannel.count, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @createIncrblobChannel.count, align 4
  %68 = call i32 @sqlite3_snprintf(i32 64, i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @Tcl_CreateChannel(i32* @IncrblobChannelType, i8* %69, %struct.TYPE_6__* %70, i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @Tcl_RegisterChannel(i32* %75, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %57
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %96, align 8
  br label %97

97:                                               ; preds = %91, %57
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %103, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @Tcl_GetChannelName(i32 %107)
  %109 = inttoptr i64 %108 to i8*
  %110 = load i32, i32* @TCL_VOLATILE, align 4
  %111 = call i32 @Tcl_SetResult(i32* %104, i8* %109, i32 %110)
  %112 = load i32, i32* @TCL_OK, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %97, %47
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

declare dso_local i32 @sqlite3_blob_open(i32*, i8*, i8*, i8*, i32, i32, i32**) #1

declare dso_local i32 @Tcl_SetResult(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_errmsg(i32*) #1

declare dso_local i64 @Tcl_Alloc(i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @Tcl_CreateChannel(i32*, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @Tcl_RegisterChannel(i32*, i32) #1

declare dso_local i64 @Tcl_GetChannelName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
