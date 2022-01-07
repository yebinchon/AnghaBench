; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_init.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_amiga.c_mch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntuitionBase = type { i32 }

@mch_init.intlibname = internal global [18 x i8] c"intuition.library\00", align 16
@Columns = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@raw_in = common dso_local global i64 0, align 8
@raw_out = common dso_local global i64 0, align 8
@wb_window = common dso_local global i32* null, align 8
@IntuitionBase = common dso_local global %struct.IntuitionBase* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"cannot open \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"!?\0A\00", align 1
@Enable_Abort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_init() #0 {
  store i32 80, i32* @Columns, align 4
  store i32 24, i32* @Rows, align 4
  %1 = load i64, i64* @raw_in, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = call i64 (...) @Input()
  store i64 %4, i64* @raw_in, align 8
  %5 = call i64 (...) @Output()
  store i64 %5, i64* @raw_out, align 8
  %6 = load i64, i64* @raw_in, align 8
  %7 = call i32 @IsInteractive(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* @raw_out, align 8
  store i64 %10, i64* @raw_in, align 8
  br label %18

11:                                               ; preds = %3
  %12 = load i64, i64* @raw_out, align 8
  %13 = call i32 @IsInteractive(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @raw_in, align 8
  store i64 %16, i64* @raw_out, align 8
  br label %17

17:                                               ; preds = %15, %11
  br label %18

18:                                               ; preds = %17, %9
  br label %19

19:                                               ; preds = %18, %0
  %20 = call i32 (...) @out_flush()
  store i32* null, i32** @wb_window, align 8
  %21 = call i64 @OpenLibrary(i32* bitcast ([18 x i8]* @mch_init.intlibname to i32*), i64 0)
  %22 = inttoptr i64 %21 to %struct.IntuitionBase*
  store %struct.IntuitionBase* %22, %struct.IntuitionBase** @IntuitionBase, align 8
  %23 = icmp eq %struct.IntuitionBase* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @mch_errmsg(i8* %25)
  %27 = call i32 @mch_errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mch_init.intlibname, i64 0, i64 0))
  %28 = call i32 @mch_errmsg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @mch_exit(i32 3)
  br label %30

30:                                               ; preds = %24, %19
  ret void
}

declare dso_local i64 @Input(...) #1

declare dso_local i64 @Output(...) #1

declare dso_local i32 @IsInteractive(i64) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i64 @OpenLibrary(i32*, i64) #1

declare dso_local i32 @mch_errmsg(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @mch_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
