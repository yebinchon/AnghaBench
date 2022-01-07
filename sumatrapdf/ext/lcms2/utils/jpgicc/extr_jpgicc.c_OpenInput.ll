; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_OpenInput.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_OpenInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@lIsITUFax = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@InFile = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot open '%s'\00", align 1
@ErrorHandler = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@Decompressor = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@my_error_exit = common dso_local global i8* null, align 8
@JPEG_APP0 = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @OpenInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenInput(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* @lIsITUFax, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** @InFile, align 8
  %7 = load i32*, i32** @InFile, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @FatalError(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @jpeg_std_error(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ErrorHandler, i32 0, i32 0))
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Decompressor, i32 0, i32 0), align 4
  %14 = load i8*, i8** @my_error_exit, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ErrorHandler, i32 0, i32 0, i32 1), align 8
  %15 = load i8*, i8** @my_error_exit, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ErrorHandler, i32 0, i32 0, i32 0), align 8
  %16 = call i32 @jpeg_create_decompress(%struct.TYPE_8__* @Decompressor)
  %17 = load i32*, i32** @InFile, align 8
  %18 = call i32 @jpeg_stdio_src(%struct.TYPE_8__* @Decompressor, i32* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %28, %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, i64* @JPEG_APP0, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @jpeg_save_markers(%struct.TYPE_8__* @Decompressor, i64 %26, i32 65535)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %19

31:                                               ; preds = %19
  %32 = load i32*, i32** @InFile, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @fseek(i32* %32, i32 0, i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @jpeg_read_header(%struct.TYPE_8__* @Decompressor, i32 %35)
  %37 = load i32, i32* @TRUE, align 4
  ret i32 %37
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @FatalError(i8*, i8*) #1

declare dso_local i32 @jpeg_std_error(%struct.TYPE_9__*) #1

declare dso_local i32 @jpeg_create_decompress(%struct.TYPE_8__*) #1

declare dso_local i32 @jpeg_stdio_src(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @jpeg_save_markers(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @jpeg_read_header(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
