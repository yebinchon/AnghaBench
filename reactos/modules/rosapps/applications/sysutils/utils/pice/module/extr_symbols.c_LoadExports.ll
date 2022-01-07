; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_LoadExports.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_LoadExports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@OUTPUT_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pICE: loading exports...\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i32] [i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 82, i32 111, i32 111, i32 116, i32 92, i32 115, i32 121, i32 109, i32 98, i32 111, i32 108, i32 115, i32 92, i32 110, i32 116, i32 111, i32 115, i32 107, i32 114, i32 110, i32 108, i32 46, i32 109, i32 97, i32 112, i32 0], align 4
@OF_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"file len = %d\0A\00", align 1
@NONPAGEDPOOL = common dso_local global i32 0, align 4
@pExports = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"pExports = %x\0A\00", align 1
@ulExportLen = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"success reading system map!\0A\00", align 1
@tempSym = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"pICE: ntoskrnl.sym @ %x (size %x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"error reading ntoskrnl map!\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pICE: no ntoskrnl.sys \0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"pICE: could not load exports...\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadExports() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 (...) @ENTER_FUNC()
  %6 = load i32, i32* @OUTPUT_WINDOW, align 4
  %7 = call i32 @Print(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @OF_READ, align 4
  %9 = call i64 @PICE_open(i8* bitcast ([33 x i32]* @.str.1 to i8*), i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = call i64 @PICE_len(i64 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @DPRINT(i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  %23 = load i32, i32* @NONPAGEDPOOL, align 4
  %24 = call i64 @PICE_malloc(i64 %22, i32 %23)
  store i64 %24, i64* @pExports, align 8
  %25 = load i64, i64* @pExports, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @DPRINT(i32 %26)
  %28 = load i64, i64* @pExports, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %17
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* @ulExportLen, align 8
  %32 = load i64, i64* @pExports, align 8
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @pExports, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @PICE_read(i64 %37, i64 %38, i64 %39)
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = call i32 @DPRINT(i32 ptrtoint ([29 x i8]* @.str.4 to i32))
  %44 = load i8*, i8** @tempSym, align 8
  %45 = load i64, i64* @pExports, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @PICE_sprintf(i8* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i32, i32* @OUTPUT_WINDOW, align 4
  %49 = load i8*, i8** @tempSym, align 8
  %50 = call i32 @Print(i32 %48, i8* %49)
  br label %53

51:                                               ; preds = %30
  %52 = call i32 @DbgPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53, %17
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @PICE_close(i64 %56)
  br label %64

58:                                               ; preds = %0
  %59 = load i32, i32* @OUTPUT_WINDOW, align 4
  %60 = call i32 @Print(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* @OUTPUT_WINDOW, align 4
  %62 = call i32 @Print(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = call i32 (...) @LEAVE_FUNC()
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @Print(i32, i8*) #1

declare dso_local i64 @PICE_open(i8*, i32) #1

declare dso_local i64 @PICE_len(i64) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @PICE_malloc(i64, i32) #1

declare dso_local i64 @PICE_read(i64, i64, i64) #1

declare dso_local i32 @PICE_sprintf(i8*, i8*, i64, i64) #1

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i32 @PICE_close(i64) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
