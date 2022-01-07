; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_vlan-util.c_config_parse_default_port_vlanid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_vlan-util.c_config_parse_default_port_vlanid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_default_port_vlanid(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %22, align 8
  %25 = load i8*, i8** %17, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %19, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %20, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i64 @streq(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %10
  %35 = load i64*, i64** %22, align 8
  store i64 0, i64* %35, align 8
  store i32 0, i32* %11, align 4
  br label %48

36:                                               ; preds = %10
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i8*, i8** %19, align 8
  %45 = load i8*, i8** %20, align 8
  %46 = load i8*, i8** %21, align 8
  %47 = call i32 @config_parse_vlanid(i8* %37, i8* %38, i32 %39, i8* %40, i32 %41, i8* %42, i32 %43, i8* %44, i8* %45, i8* %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %36, %34
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @config_parse_vlanid(i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
