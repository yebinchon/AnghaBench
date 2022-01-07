; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_send_workspace_command.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_ipc_send_workspace_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"workspace \22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@IPC_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_send_workspace_command(%struct.swaybar* %0, i8* %1) #0 {
  %3 = alloca %struct.swaybar*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.swaybar* %0, %struct.swaybar** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add i64 12, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 34
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %101

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strcpy(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = call i32 @strcpy(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  store i64 11, i64* %9, align 8
  br label %56

56:                                               ; preds = %89, %47
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %75, label %80

75:                                               ; preds = %68, %61
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 92, i8* %79, align 1
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i8*, i8** %4, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %56

92:                                               ; preds = %56
  %93 = load %struct.swaybar*, %struct.swaybar** %3, align 8
  %94 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IPC_COMMAND, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @ipc_single_command(i32 %95, i32 %96, i8* %97, i32* %5)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @free(i8* %99)
  br label %101

101:                                              ; preds = %92, %46
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ipc_single_command(i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
