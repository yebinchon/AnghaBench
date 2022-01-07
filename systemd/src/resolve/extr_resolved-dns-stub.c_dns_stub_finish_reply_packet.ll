; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_dns_stub_finish_reply_packet.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-stub.c_dns_stub_finish_reply_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ADVERTISE_DATAGRAM_SIZE_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32)* @dns_stub_finish_reply_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_stub_finish_reply_packet(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %7
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @ADVERTISE_DATAGRAM_SIZE_MAX, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dns_packet_append_opt(i32* %22, i32 %23, i32 %24, i32 %25, i32* null)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  br label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %8, align 4
  br label %62

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  br label %45

39:                                               ; preds = %7
  store i32 0, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 15
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @DNS_RCODE_SERVFAIL, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call %struct.TYPE_2__* @DNS_PACKET_HEADER(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @DNS_PACKET_MAKE_FLAGS(i32 1, i32 0, i32 0, i32 %54, i32 1, i32 1, i32 %55, i32 0, i32 %56)
  %58 = call i32 @htobe16(i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call %struct.TYPE_2__* @DNS_PACKET_HEADER(i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %49, %35
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dns_packet_append_opt(i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @DNS_PACKET_HEADER(i32*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @DNS_PACKET_MAKE_FLAGS(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
