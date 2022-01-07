; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_dnssec_verdict.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_dnssec_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@_DNSSEC_VERDICT_MAX = common dso_local global i64 0, align 8
@DEBUG_LOGGING = common dso_local global i64 0, align 8
@DNS_RESOURCE_KEY_STRING_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Found verdict for lookup %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_dnssec_verdict(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp uge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @_DNSSEC_VERDICT_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* @DEBUG_LOGGING, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i32, i32* @DNS_RESOURCE_KEY_STRING_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = trunc i64 %22 to i32
  %27 = call i32 @dns_resource_key_to_string(i32* %25, i8* %24, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @dnssec_verdict_to_string(i64 %28)
  %30 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  %31 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %31)
  br label %32

32:                                               ; preds = %20, %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @dns_resource_key_to_string(i32*, i8*, i32) #1

declare dso_local i32 @dnssec_verdict_to_string(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
