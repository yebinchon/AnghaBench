; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_save_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_save_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_file_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"[!] load_key\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[!] could not write data file (1)!\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"[!] could not write data file (2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @save_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_data(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @data_file_name, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @tox_get_savedata_size(i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @tox_get_savedata(i32* %21, i32* %20)
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @fwrite(i32* %20, i32 4, i64 %23, i32* %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @fclose(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  %39 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %39)
  br label %40

40:                                               ; preds = %37, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @tox_get_savedata_size(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tox_get_savedata(i32*, i32*) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @fclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
