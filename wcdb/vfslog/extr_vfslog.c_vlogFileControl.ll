; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogFileControl.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogFileControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, i8*)* }

@SQLITE_FCNTL_VFSLOG_STAT = common dso_local global i32 0, align 4
@SQLITE_FCNTL_VFSNAME = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vlog/%z\00", align 1
@SQLITE_FCNTL_TRACE = common dso_local global i32 0, align 4
@VLOG_OP_FILECONTROL = common dso_local global i32 0, align 4
@SQLITE_FCNTL_PRAGMA = common dso_local global i32 0, align 4
@SQLITE_FCNTL_SIZE_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @vlogFileControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogFileControl(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SQLITE_FCNTL_VFSLOG_STAT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = call i32 @vlogFcntlStats(%struct.TYPE_6__* %20, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %122

24:                                               ; preds = %3
  %25 = call i64 (...) @vlog_time()
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_7__*, i32, i8*)*, i32 (%struct.TYPE_7__*, i32, i8*)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 %32(%struct.TYPE_7__* %35, i32 %36, i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SQLITE_FCNTL_VFSNAME, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %24
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i8**
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %42, %24
  %54 = call i64 (...) @vlog_time()
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SQLITE_FCNTL_TRACE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @VLOG_OP_FILECONTROL, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @vlogLogPrint(i32 %63, i64 %64, i64 %65, i32 %66, i32 %67, i32 -1, i8* %68, i32 %69)
  br label %120

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @SQLITE_FCNTL_PRAGMA, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i8*, i8** %7, align 8
  %77 = bitcast i8* %76 to i8**
  store i8** %77, i8*** %12, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @VLOG_OP_FILECONTROL, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i8**, i8*** %12, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @vlogLogPrint(i32 %80, i64 %81, i64 %82, i32 %83, i32 %84, i32 -1, i8* %87, i32 %88)
  br label %119

90:                                               ; preds = %71
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SQLITE_FCNTL_SIZE_HINT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* @VLOG_OP_FILECONTROL, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @vlogLogPrint(i32 %100, i64 %101, i64 %102, i32 %103, i32 %104, i32 %105, i8* null, i32 %106)
  br label %118

108:                                              ; preds = %90
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @VLOG_OP_FILECONTROL, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @vlogLogPrint(i32 %111, i64 %112, i64 %113, i32 %114, i32 %115, i32 -1, i8* null, i32 %116)
  br label %118

118:                                              ; preds = %108, %94
  br label %119

119:                                              ; preds = %118, %75
  br label %120

120:                                              ; preds = %119, %60
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @vlogFcntlStats(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @vlog_time(...) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @vlogLogPrint(i32, i64, i64, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
