; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_set_space_status.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_set_space_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BUFFER_LEN = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@IDS_FREE_SPACE_FMT = common dso_local global i32 0, align 4
@sQMarks = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SB_SETTEXTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_space_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_space_status() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca [64 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = load i32, i32* @BUFFER_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = call i64 @GetDiskFreeSpaceExW(i32* null, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %0
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @format_bytes(i32* %17, i32 %19)
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @format_bytes(i32* %21, i32 %23)
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %26 = ptrtoint i32* %25 to i64
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %29 = ptrtoint i32* %28 to i64
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %32 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %35 = load i32, i32* @IDS_FREE_SPACE_FMT, align 4
  %36 = call i32 @RS(i32* %34, i32 %35)
  %37 = mul nuw i64 4, %11
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %41 = bitcast i64* %40 to i32*
  %42 = call i32 @FormatMessageW(i32 %33, i32 %36, i32 0, i32 0, i32* %13, i32 %39, i32* %41)
  br label %46

43:                                               ; preds = %0
  %44 = load i32, i32* @sQMarks, align 4
  %45 = call i32 @lstrcpyW(i32* %13, i32 %44)
  br label %46

46:                                               ; preds = %43, %16
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 4
  %48 = load i32, i32* @SB_SETTEXTW, align 4
  %49 = ptrtoint i32* %13 to i32
  %50 = call i32 @SendMessageW(i32 %47, i32 %48, i32 0, i32 %49)
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetDiskFreeSpaceExW(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i32 @format_bytes(i32*, i32) #2

declare dso_local i32 @FormatMessageW(i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @RS(i32*, i32) #2

declare dso_local i32 @lstrcpyW(i32*, i32) #2

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
