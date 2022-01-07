; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ReceiveFileList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ReceiveFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"(%p,%d,%s,%p,%08lx)\0A\00", align 1
@FTPFINDNEXTVtbl = common dso_local global i32 0, align 4
@WH_HFTPFINDNEXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Matched %d files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32, i32, i32)* @FTP_ReceiveFileList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FTP_ReceiveFileList(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %14, i32 %15, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @FTP_ParseDirectory(%struct.TYPE_11__* %21, i32 %22, i32 %23, i32** %12, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @FTP_ConvertFileProp(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call %struct.TYPE_12__* @alloc_object(%struct.TYPE_13__* %35, i32* @FTPFINDNEXTVtbl, i32 4)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %13, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load i32, i32* @WH_HFTPFINDNEXT, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = call i32 @WININET_AddRef(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = call i32 @list_add_head(i32* %64, i32* %67)
  br label %69

69:                                               ; preds = %39, %33
  br label %70

70:                                               ; preds = %69, %5
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_11__*
  %74 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i32* [ %81, %77 ], [ null, %82 ]
  ret i32* %84
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @FTP_ParseDirectory(%struct.TYPE_11__*, i32, i32, i32**, i32*) #1

declare dso_local i32 @FTP_ConvertFileProp(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @alloc_object(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @WININET_AddRef(%struct.TYPE_13__*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
