; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_leading_spaces_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_leading_spaces_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i8* }

@EOL_BACKSLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8*)* @leading_spaces_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @leading_spaces_state(%struct.parser* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %34, %2
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @is_eol(%struct.parser* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 92
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.parser*, %struct.parser** %4, align 8
  %22 = getelementptr inbounds %struct.parser, %struct.parser* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.parser*, %struct.parser** %4, align 8
  %24 = load i32, i32* @EOL_BACKSLASH, align 4
  %25 = call i32 @set_state(%struct.parser* %23, i32 %24)
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %3, align 8
  br label %44

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @isspaceW(i8 signext %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %8

37:                                               ; preds = %32, %8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.parser*, %struct.parser** %4, align 8
  %40 = getelementptr inbounds %struct.parser, %struct.parser* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.parser*, %struct.parser** %4, align 8
  %42 = call i32 @pop_state(%struct.parser* %41)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %37, %19
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @is_eol(%struct.parser*, i8*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i8 signext) #1

declare dso_local i32 @pop_state(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
