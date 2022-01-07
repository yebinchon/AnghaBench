; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_file_print_control.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_file_print_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"[t] control %u received\00", align 1
@TOX_FILE_CONTROL_CANCEL = common dso_local global i32 0, align 4
@NUM_FILE_SENDERS = common dso_local global i32 0, align 4
@file_senders = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"[t] %u file transfer: %u cancelled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_print_control(i32* %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = bitcast [512 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 512, i1 false)
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %20 = call i32 @new_lines(i8* %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @TOX_FILE_CONTROL_CANCEL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %85, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @NUM_FILE_SENDERS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %46
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @fclose(i64 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file_senders, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %80)
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %83 = call i32 @new_lines(i8* %82)
  br label %84

84:                                               ; preds = %55, %46, %37, %29
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %25

88:                                               ; preds = %25
  br label %89

89:                                               ; preds = %88, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #2

declare dso_local i32 @new_lines(i8*) #2

declare dso_local i32 @fclose(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
