; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_get_shellsize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_get_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { i64 }
%struct.ConUnit = type { i32, i32 }
%struct.InfoData = type { i64, i64 }
%struct.IOStdReq = type { i64 }

@term_console = common dso_local global i64 0, align 8
@size_set = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\9Bt\9Bu\00", align 1
@raw_out = common dso_local global i32 0, align 4
@ACTION_DISK_INFO = common dso_local global i64 0, align 8
@wb_window = common dso_local global %struct.Window* null, align 8
@FALSE = common dso_local global i64 0, align 8
@oldwindowtitle = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"mch_get_shellsize: not a console??\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@DOS_INFODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_get_shellsize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ConUnit*, align 8
  %3 = alloca [19 x i8], align 16
  %4 = alloca %struct.InfoData*, align 8
  store %struct.InfoData* null, %struct.InfoData** %4, align 8
  %5 = load i64, i64* @term_console, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %79

8:                                                ; preds = %0
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0
  %10 = ptrtoint i8* %9 to i64
  %11 = add nsw i64 %10, 3
  %12 = and i64 %11, -4
  %13 = inttoptr i64 %12 to %struct.InfoData*
  store %struct.InfoData* %13, %struct.InfoData** %4, align 8
  %14 = load i64, i64* @size_set, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @OUT_STR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = call i32 (...) @out_flush()
  %20 = load i32, i32* @raw_out, align 4
  %21 = call i32 @MP(i32 %20)
  %22 = load i64, i64* @ACTION_DISK_INFO, align 8
  %23 = load %struct.InfoData*, %struct.InfoData** %4, align 8
  %24 = ptrtoint %struct.InfoData* %23 to i32
  %25 = ashr i32 %24, 2
  %26 = call i64 @dos_packet(i32 %21, i64 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.InfoData*, %struct.InfoData** %4, align 8
  %30 = getelementptr inbounds %struct.InfoData, %struct.InfoData* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.Window*
  store %struct.Window* %32, %struct.Window** @wb_window, align 8
  %33 = icmp eq %struct.Window* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %18
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* @term_console, align 8
  br label %79

36:                                               ; preds = %28
  %37 = load i32*, i32** @oldwindowtitle, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.Window*, %struct.Window** @wb_window, align 8
  %41 = getelementptr inbounds %struct.Window, %struct.Window* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** @oldwindowtitle, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.InfoData*, %struct.InfoData** %4, align 8
  %46 = getelementptr inbounds %struct.InfoData, %struct.InfoData* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @mch_errmsg(i32 %50)
  %52 = load i32, i32* @FAIL, align 4
  store i32 %52, i32* %1, align 4
  br label %81

53:                                               ; preds = %44
  %54 = load %struct.InfoData*, %struct.InfoData** %4, align 8
  %55 = getelementptr inbounds %struct.InfoData, %struct.InfoData* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.IOStdReq*
  %58 = getelementptr inbounds %struct.IOStdReq, %struct.IOStdReq* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ConUnit*
  store %struct.ConUnit* %60, %struct.ConUnit** %2, align 8
  %61 = load %struct.ConUnit*, %struct.ConUnit** %2, align 8
  %62 = getelementptr inbounds %struct.ConUnit, %struct.ConUnit* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @Rows, align 4
  %65 = load %struct.ConUnit*, %struct.ConUnit** %2, align 8
  %66 = getelementptr inbounds %struct.ConUnit, %struct.ConUnit* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @Columns, align 4
  %69 = load i32, i32* @Rows, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %53
  %72 = load i32, i32* @Rows, align 4
  %73 = icmp sgt i32 %72, 200
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %53
  store i32 80, i32* @Columns, align 4
  store i32 24, i32* @Rows, align 4
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* @term_console, align 8
  %76 = load i32, i32* @FAIL, align 4
  store i32 %76, i32* %1, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @OK, align 4
  store i32 %78, i32* %1, align 4
  br label %81

79:                                               ; preds = %34, %7
  %80 = load i32, i32* @FAIL, align 4
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %79, %77, %74, %49
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @OUT_STR(i8*) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i64 @dos_packet(i32, i64, i32) #1

declare dso_local i32 @MP(i32) #1

declare dso_local i32 @mch_errmsg(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
