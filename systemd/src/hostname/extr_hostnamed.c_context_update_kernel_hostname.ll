; ModuleID = '/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_context_update_kernel_hostname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_context_update_kernel_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }

@PROP_STATIC_HOSTNAME = common dso_local global i64 0, align 8
@PROP_HOSTNAME = common dso_local global i64 0, align 8
@FALLBACK_HOSTNAME = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hosts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @context_update_kernel_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_update_kernel_hostname(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_4__* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = load i64, i64* @PROP_STATIC_HOSTNAME, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @hostname_is_useful(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %5, align 8
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i64, i64* @PROP_HOSTNAME, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @isempty(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* @PROP_HOSTNAME, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  br label %44

35:                                               ; preds = %19
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @isempty(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %5, align 8
  br label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** @FALLBACK_HOSTNAME, align 8
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %17
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @sethostname_idempotent(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %45
  %53 = call i32 @STRV_MAKE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @nscd_flush_cache(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @hostname_is_useful(i8*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i64 @sethostname_idempotent(i8*) #1

declare dso_local i32 @nscd_flush_cache(i32) #1

declare dso_local i32 @STRV_MAKE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
