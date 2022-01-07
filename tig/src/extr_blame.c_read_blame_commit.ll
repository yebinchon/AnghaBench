; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_read_blame_commit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_read_blame_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_commit = type { i32 }
%struct.view = type { %struct.line*, i32 }
%struct.line = type { i32, %struct.blame* }
%struct.blame = type { i64, %struct.blame_commit* }
%struct.blame_state = type { i32 }
%struct.blame_header = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_commit* (%struct.view*, i8*, %struct.blame_state*)* @read_blame_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_commit* @read_blame_commit(%struct.view* %0, i8* %1, %struct.blame_state* %2) #0 {
  %4 = alloca %struct.blame_commit*, align 8
  %5 = alloca %struct.view*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.blame_state*, align 8
  %8 = alloca %struct.blame_header, align 8
  %9 = alloca %struct.blame_commit*, align 8
  %10 = alloca %struct.blame*, align 8
  %11 = alloca %struct.line*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.blame_state* %2, %struct.blame_state** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.view*, %struct.view** %5, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @parse_blame_header(%struct.blame_header* %8, i8* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.blame_commit* null, %struct.blame_commit** %4, align 8
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.blame_commit* @get_blame_commit(%struct.view* %20, i8* %21)
  store %struct.blame_commit* %22, %struct.blame_commit** %9, align 8
  %23 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %24 = icmp ne %struct.blame_commit* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.blame_commit* null, %struct.blame_commit** %4, align 8
  br label %69

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.blame_state*, %struct.blame_state** %7, align 8
  %30 = getelementptr inbounds %struct.blame_state, %struct.blame_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %38, %26
  %34 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.view*, %struct.view** %5, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 0
  %41 = load %struct.line*, %struct.line** %40, align 8
  %42 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.line, %struct.line* %41, i64 %48
  store %struct.line* %49, %struct.line** %11, align 8
  %50 = load %struct.line*, %struct.line** %11, align 8
  %51 = getelementptr inbounds %struct.line, %struct.line* %50, i32 0, i32 1
  %52 = load %struct.blame*, %struct.blame** %51, align 8
  store %struct.blame* %52, %struct.blame** %10, align 8
  %53 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  %54 = load %struct.blame*, %struct.blame** %10, align 8
  %55 = getelementptr inbounds %struct.blame, %struct.blame* %54, i32 0, i32 1
  store %struct.blame_commit* %53, %struct.blame_commit** %55, align 8
  %56 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.blame_header, %struct.blame_header* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.blame*, %struct.blame** %10, align 8
  %64 = getelementptr inbounds %struct.blame, %struct.blame* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.line*, %struct.line** %11, align 8
  %66 = getelementptr inbounds %struct.line, %struct.line* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.blame_commit*, %struct.blame_commit** %9, align 8
  store %struct.blame_commit* %68, %struct.blame_commit** %4, align 8
  br label %69

69:                                               ; preds = %67, %25, %18
  %70 = load %struct.blame_commit*, %struct.blame_commit** %4, align 8
  ret %struct.blame_commit* %70
}

declare dso_local i32 @parse_blame_header(%struct.blame_header*, i8*, i32) #1

declare dso_local %struct.blame_commit* @get_blame_commit(%struct.view*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
