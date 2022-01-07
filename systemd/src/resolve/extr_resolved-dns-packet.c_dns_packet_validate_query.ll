; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_validate_query.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_validate_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_packet_validate_query(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_17__* %5)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = call i32 @dns_packet_validate(%struct.TYPE_17__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = call i64 @DNS_PACKET_QR(%struct.TYPE_17__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %88

18:                                               ; preds = %13
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i64 @DNS_PACKET_OPCODE(%struct.TYPE_17__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EBADMSG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call i64 @DNS_PACKET_TC(%struct.TYPE_17__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EBADMSG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %86 [
    i32 129, label %36
    i32 130, label %36
    i32 128, label %58
  ]

36:                                               ; preds = %32, %32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = call i32 @DNS_PACKET_QDCOUNT(%struct.TYPE_17__* %37)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EBADMSG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %88

43:                                               ; preds = %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = call i32 @DNS_PACKET_ANCOUNT(%struct.TYPE_17__* %44)
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EBADMSG, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %88

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = call i32 @DNS_PACKET_NSCOUNT(%struct.TYPE_17__* %51)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EBADMSG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %50
  br label %87

58:                                               ; preds = %32
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = call i32 @DNS_PACKET_AA(%struct.TYPE_17__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @DNS_PACKET_RD(%struct.TYPE_17__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = call i32 @DNS_PACKET_RA(%struct.TYPE_17__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = call i32 @DNS_PACKET_AD(%struct.TYPE_17__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = call i32 @DNS_PACKET_CD(%struct.TYPE_17__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = call i32 @DNS_PACKET_RCODE(%struct.TYPE_17__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74, %70, %66, %62, %58
  %83 = load i32, i32* @EBADMSG, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %88

85:                                               ; preds = %78
  br label %87

86:                                               ; preds = %32
  br label %87

87:                                               ; preds = %86, %85, %57
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %82, %54, %47, %40, %29, %22, %17, %11
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @dns_packet_validate(%struct.TYPE_17__*) #1

declare dso_local i64 @DNS_PACKET_QR(%struct.TYPE_17__*) #1

declare dso_local i64 @DNS_PACKET_OPCODE(%struct.TYPE_17__*) #1

declare dso_local i64 @DNS_PACKET_TC(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_QDCOUNT(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_ANCOUNT(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_NSCOUNT(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_AA(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_RD(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_RA(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_AD(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_CD(%struct.TYPE_17__*) #1

declare dso_local i32 @DNS_PACKET_RCODE(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
