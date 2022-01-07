; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_dhcp6_lease_set_ntp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp6-lease.c_dhcp6_lease_set_ntp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp6_lease_set_ntp(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @assert_return(%struct.TYPE_10__* %14, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @assert_return(%struct.TYPE_10__* %18, i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mfree(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %76, %3
  %33 = call i32 @dhcp6_option_parse(%struct.TYPE_10__** %6, i64* %7, i32* %9, i64* %10, %struct.TYPE_10__** %11)
  store i32 %33, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %76 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %60
  ]

37:                                               ; preds = %35, %35
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 16
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %85

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = call i32 @dhcp6_option_parse_ip6addrs(%struct.TYPE_10__* %42, i64 %43, i32* %45, i32 %48, i64* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %85

56:                                               ; preds = %41
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %76

60:                                               ; preds = %35
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @dhcp6_option_parse_domainname(%struct.TYPE_10__* %61, i64 %62, i8*** %13)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %85

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8**, i8*** %13, align 8
  %72 = call i32 @strv_free_and_replace(i32 %70, i8** %71)
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %35, %67, %56
  br label %32

77:                                               ; preds = %32
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ENOMSG, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %82, %66, %54, %40
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @assert_return(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mfree(i32) #1

declare dso_local i32 @dhcp6_option_parse(%struct.TYPE_10__**, i64*, i32*, i64*, %struct.TYPE_10__**) #1

declare dso_local i32 @dhcp6_option_parse_ip6addrs(%struct.TYPE_10__*, i64, i32*, i32, i64*) #1

declare dso_local i32 @dhcp6_option_parse_domainname(%struct.TYPE_10__*, i64, i8***) #1

declare dso_local i32 @strv_free_and_replace(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
