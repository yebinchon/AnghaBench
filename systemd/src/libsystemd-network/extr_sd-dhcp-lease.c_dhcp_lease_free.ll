; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-lease.c_dhcp_lease_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-lease.c_dhcp_lease_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option* }
%struct.sd_dhcp_raw_option = type { %struct.sd_dhcp_raw_option* }

@options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @dhcp_lease_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @dhcp_lease_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.sd_dhcp_raw_option*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 12
  %9 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %8, align 8
  %10 = icmp ne %struct.sd_dhcp_raw_option* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 12
  %14 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %13, align 8
  store %struct.sd_dhcp_raw_option* %14, %struct.sd_dhcp_raw_option** %3, align 8
  %15 = load i32, i32* @options, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 12
  %18 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %17, align 8
  %19 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %3, align 8
  %20 = call i32 @LIST_REMOVE(i32 %15, %struct.sd_dhcp_raw_option* %18, %struct.sd_dhcp_raw_option* %19)
  %21 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %3, align 8
  %22 = getelementptr inbounds %struct.sd_dhcp_raw_option, %struct.sd_dhcp_raw_option* %21, i32 0, i32 0
  %23 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %22, align 8
  %24 = call i32 @free(%struct.sd_dhcp_raw_option* %23)
  %25 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %3, align 8
  %26 = call i32 @free(%struct.sd_dhcp_raw_option* %25)
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 11
  %30 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %29, align 8
  %31 = call i32 @free(%struct.sd_dhcp_raw_option* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 10
  %34 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %33, align 8
  %35 = call i32 @free(%struct.sd_dhcp_raw_option* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  %38 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %37, align 8
  %39 = call i32 @free(%struct.sd_dhcp_raw_option* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 8
  %42 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %41, align 8
  %43 = call i32 @free(%struct.sd_dhcp_raw_option* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 7
  %46 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %45, align 8
  %47 = call i32 @free(%struct.sd_dhcp_raw_option* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %49, align 8
  %51 = call i32 @free(%struct.sd_dhcp_raw_option* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %53, align 8
  %55 = call i32 @free(%struct.sd_dhcp_raw_option* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %57, align 8
  %59 = call i32 @free(%struct.sd_dhcp_raw_option* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %61, align 8
  %63 = call i32 @free(%struct.sd_dhcp_raw_option* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %65, align 8
  %67 = call i32 @free(%struct.sd_dhcp_raw_option* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option** %69, align 8
  %71 = call i32 @free(%struct.sd_dhcp_raw_option* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strv_free(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = call %struct.TYPE_7__* @mfree(%struct.TYPE_7__* %76)
  ret %struct.TYPE_7__* %77
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @LIST_REMOVE(i32, %struct.sd_dhcp_raw_option*, %struct.sd_dhcp_raw_option*) #1

declare dso_local i32 @free(%struct.sd_dhcp_raw_option*) #1

declare dso_local i32 @strv_free(i32) #1

declare dso_local %struct.TYPE_7__* @mfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
