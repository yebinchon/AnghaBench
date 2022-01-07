; ModuleID = '/home/carl/AnghaBench/vlc/test/src/crypto/extr_update.c_parse_sig.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/crypto/extr_update.c_parse_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SIGNATURE_PACKET = common dso_local global i64 0, align 8
@BINARY_SIGNATURE = common dso_local global i64 0, align 8
@TEXT_SIGNATURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @parse_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sig(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 3
  %15 = udiv i64 %14, 4
  %16 = add i64 %15, 1
  %17 = call i32* @malloc(i64 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 128
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i64, i64* %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @pgp_unarmor(i8* %25, i64 %26, i32* %27, i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @packet_type(i32 %32)
  %34 = load i64, i64* @SIGNATURE_PACKET, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @packet_header_len(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %50, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 4
  br label %50

50:                                               ; preds = %47, %44, %2
  %51 = phi i1 [ true, %44 ], [ true, %2 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @scalar_number(i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @parse_signature_packet(%struct.TYPE_4__* %71, i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BINARY_SIGNATURE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %50
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TEXT_SIGNATURE, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %88, %50
  %95 = phi i1 [ true, %50 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pgp_unarmor(i8*, i64, i32*, i64) #1

declare dso_local i64 @packet_type(i32) #1

declare dso_local i32 @packet_header_len(i32) #1

declare dso_local i32 @scalar_number(i32*, i32) #1

declare dso_local i32 @parse_signature_packet(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
