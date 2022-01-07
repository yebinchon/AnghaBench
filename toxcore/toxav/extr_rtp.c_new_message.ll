; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_new_message.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_new_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RTPMessage = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RTPMessage* @new_message(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.RTPMessage*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp uge i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = sub i64 %13, 4
  %15 = add i64 48, %14
  %16 = call %struct.RTPMessage* @calloc(i64 %15, i32 1)
  store %struct.RTPMessage* %16, %struct.RTPMessage** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %21 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %23 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %22, i32 0, i32 0
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @memcpy(%struct.TYPE_2__* %23, i32* %24, i64 %25)
  %27 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %28 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @ntohs(i8* %30)
  %32 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %33 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i8* %31, i8** %34, align 8
  %35 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %36 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @ntohl(i8* %38)
  %40 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %41 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %44 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @ntohl(i8* %46)
  %48 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %49 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %52 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @ntohs(i8* %54)
  %56 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %57 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %60 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @ntohs(i8* %62)
  %64 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  %65 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  ret %struct.RTPMessage* %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.RTPMessage* @calloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i64) #1

declare dso_local i8* @ntohs(i8*) #1

declare dso_local i8* @ntohl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
