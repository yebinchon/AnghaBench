; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_set_dnssec_mode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_set_dnssec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DNSSEC_YES = common dso_local global i64 0, align 8
@DNSSEC_ALLOW_DOWNGRADE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [154 x i8] c"DNSSEC option for the link cannot be enabled or set to allow-downgrade when systemd-resolved is built without gcrypt support. Turning off DNSSEC support.\00", align 1
@DNSSEC_NO = common dso_local global i64 0, align 8
@_DNSSEC_MODE_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_set_dnssec_mode(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_6__* %5)
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @DNSSEC_YES, align 8
  %9 = load i64, i64* @DNSSEC_ALLOW_DOWNGRADE, align 8
  %10 = call i64 @IN_SET(i64 %7, i64 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @log_warning(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @IN_SET(i64, i64, i64) #1

declare dso_local i32 @log_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
