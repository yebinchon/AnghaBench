; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PromptForBookmarkName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_PromptForBookmarkName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@gConn = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Enter a name for this bookmark: \00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Enter a name for this bookmark, or hit enter for \22%s\22: \00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PromptForBookmarkName(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gConn, i32 0, i32 0), align 4
  %8 = call i32 @DefaultBookmarkName(i8* %6, i32 64, i32 %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %10 = load i8, i8* %9, align 16
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i32, i32* @stdin, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* @stdin, align 4
  %23 = call i32 @FGets(i8* %21, i32 64, i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %33 = call i32 @STRNCPY(i32 %31, i8* %32)
  store i32 0, i32* %2, align 4
  br label %47

34:                                               ; preds = %18
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %36 = load i8, i8* %35, align 16
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %44 = call i32 @STRNCPY(i32 %42, i8* %43)
  store i32 0, i32* %2, align 4
  br label %47

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %39, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DefaultBookmarkName(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @FGets(i8*, i32, i32) #1

declare dso_local i32 @STRNCPY(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
