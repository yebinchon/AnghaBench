; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_trace.c_CloseTrace.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_trace.c_CloseTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gOurDirectoryPath = common dso_local global i8* null, align 8
@gTraceFile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"trace.%u\00", align 1
@kTraceFileName = common dso_local global i8* null, align 8
@gTraceTime = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SESSION ENDED at:    %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CloseTrace() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = load i8*, i8** @gOurDirectoryPath, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32*, i32** @gTraceFile, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  br label %35

13:                                               ; preds = %9
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %15 = call i64 (...) @getpid()
  %16 = trunc i64 %15 to i32
  %17 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %20 = call i32 @OurDirectoryPath(i8* %18, i32 256, i8* %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %22 = load i8*, i8** @kTraceFileName, align 8
  %23 = call i32 @OurDirectoryPath(i8* %21, i32 256, i8* %22)
  %24 = call i32 @time(i32* @gTraceTime)
  %25 = load i32*, i32** @gTraceFile, align 8
  %26 = call i8* @ctime(i32* @gTraceTime)
  %27 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** @gTraceFile, align 8
  %29 = call i32 @fclose(i32* %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = call i32 @unlink(i8* %30)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %34 = call i32 @rename(i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @OurDirectoryPath(i8*, i32, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
