; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_send_connect_initial.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_send_connect_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }

@False = common dso_local global i32 0, align 4
@MCS_CONNECT_INITIAL = common dso_local global i32 0, align 4
@BER_TAG_OCTET_STRING = common dso_local global i32 0, align 4
@BER_TAG_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @mcs_send_connect_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_send_connect_initial(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 115, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 5
  %22 = call %struct.TYPE_10__* @iso_init(i32* %19, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @False, align 4
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = load i32, i32* @MCS_CONNECT_INITIAL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ber_out_header(%struct.TYPE_10__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %34 = call i32 @ber_out_header(%struct.TYPE_10__* %32, i32 %33, i32 1)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = call i32 @out_uint8(%struct.TYPE_10__* %35, i32 1)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %39 = call i32 @ber_out_header(%struct.TYPE_10__* %37, i32 %38, i32 1)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = call i32 @out_uint8(%struct.TYPE_10__* %40, i32 1)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = load i32, i32* @BER_TAG_BOOLEAN, align 4
  %44 = call i32 @ber_out_header(%struct.TYPE_10__* %42, i32 %43, i32 1)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = call i32 @out_uint8(%struct.TYPE_10__* %45, i32 255)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %47, i32 34, i32 2, i32 0, i32 65535)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %49, i32 1, i32 1, i32 1, i32 1056)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %51, i32 65535, i32 64535, i32 65535, i32 65535)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ber_out_header(%struct.TYPE_10__* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @out_uint8p(%struct.TYPE_10__* %57, i64 %60, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = call i32 @s_mark_end(%struct.TYPE_10__* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = call i32 @iso_send(i32* %65, %struct.TYPE_10__* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %27, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_10__* @iso_init(i32*, i32) #1

declare dso_local i32 @ber_out_header(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @out_uint8(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mcs_out_domain_params(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @out_uint8p(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @s_mark_end(%struct.TYPE_10__*) #1

declare dso_local i32 @iso_send(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
