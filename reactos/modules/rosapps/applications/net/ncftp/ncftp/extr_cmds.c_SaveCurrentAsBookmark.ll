; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SaveCurrentAsBookmark.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SaveCurrentAsBookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@gBm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gSavePasswords = common dso_local global i32 0, align 4
@gLoadedBm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"\0A\0AYou logged into this site using a password.\0AWould you like to save the password with this bookmark?\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Save? [no] \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\0ANot saving the password.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not save bookmark.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Bookmark \22%s\22 saved.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveCurrentAsBookmark() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = call i32 @FillBookmarkInfo(%struct.TYPE_4__* @gBm)
  %4 = load i32, i32* @gSavePasswords, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @gLoadedBm, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gBm, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 64)
  %22 = load i32, i32* @stdin, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %25 = load i32, i32* @stdin, align 4
  %26 = call i32 @fgets(i8* %24, i32 63, i32 %25)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %28 = call i32 @StrToBool(i8* %27)
  store i32 %28, i32* %1, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %17
  br label %33

33:                                               ; preds = %32, %11, %8
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @PutBookmark(%struct.TYPE_4__* @gBm, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %44

40:                                               ; preds = %33
  store i32 1, i32* @gLoadedBm, align 4
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gBm, i32 0, i32 1), align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = call i32 (...) @ReCacheBookmarks()
  br label %44

44:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @FillBookmarkInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @StrToBool(i8*) #1

declare dso_local i64 @PutBookmark(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ReCacheBookmarks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
