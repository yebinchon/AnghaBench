; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_parse.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32, i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.args* @args_parse(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.args*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = call %struct.args* @xcalloc(i32 1, i32 8)
  store %struct.args* %10, %struct.args** %8, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %11

11:                                               ; preds = %32, %20, %3
  %12 = load i32, i32* %6, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @getopt(i32 %12, i8** %13, i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %11

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 63
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @strchr(i8* %25, i32 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %21
  %30 = load %struct.args*, %struct.args** %8, align 8
  %31 = call i32 @args_free(%struct.args* %30)
  store %struct.args* null, %struct.args** %4, align 8
  br label %54

32:                                               ; preds = %24
  %33 = load %struct.args*, %struct.args** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @optarg, align 4
  %36 = call i32 @args_set(%struct.args* %33, i32 %34, i32 %35)
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @optind, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @optind, align 4
  %42 = load i8**, i8*** %7, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  store i8** %44, i8*** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.args*, %struct.args** %8, align 8
  %47 = getelementptr inbounds %struct.args, %struct.args* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = call i32 @cmd_copy_argv(i32 %48, i8** %49)
  %51 = load %struct.args*, %struct.args** %8, align 8
  %52 = getelementptr inbounds %struct.args, %struct.args* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.args*, %struct.args** %8, align 8
  store %struct.args* %53, %struct.args** %4, align 8
  br label %54

54:                                               ; preds = %37, %29
  %55 = load %struct.args*, %struct.args** %4, align 8
  ret %struct.args* %55
}

declare dso_local %struct.args* @xcalloc(i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @args_free(%struct.args*) #1

declare dso_local i32 @args_set(%struct.args*, i32, i32) #1

declare dso_local i32 @cmd_copy_argv(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
