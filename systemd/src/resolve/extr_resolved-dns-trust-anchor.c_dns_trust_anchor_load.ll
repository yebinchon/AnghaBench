; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-trust-anchor.c_dns_trust_anchor_load.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-trust-anchor.c_dns_trust_anchor_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c".positive\00", align 1
@dns_trust_anchor_load_positive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c".negative\00", align 1
@dns_trust_anchor_load_negative = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to add built-in positive trust anchor: %m\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to add built-in negative trust anchor: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_trust_anchor_load(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @dns_trust_anchor_load_positive, align 4
  %9 = call i32 @dns_trust_anchor_load_files(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @dns_trust_anchor_load_negative, align 4
  %12 = call i32 @dns_trust_anchor_load_files(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @dns_trust_anchor_add_builtin_positive(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @log_error_errno(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @dns_trust_anchor_add_builtin_negative(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @dns_trust_anchor_dump(i32* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dns_trust_anchor_load_files(i32*, i8*, i32) #1

declare dso_local i32 @dns_trust_anchor_add_builtin_positive(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @dns_trust_anchor_add_builtin_negative(i32*) #1

declare dso_local i32 @dns_trust_anchor_dump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
