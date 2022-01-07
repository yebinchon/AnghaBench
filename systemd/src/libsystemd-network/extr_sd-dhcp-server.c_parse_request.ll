; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-server.c_parse_request.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-server.c_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @parse_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_request(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = call i32 @assert(%struct.TYPE_5__* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %88 [
    i32 131, label %17
    i32 129, label %26
    i32 128, label %35
    i32 132, label %44
    i32 130, label %71
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @unaligned_read_be32(i8* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  br label %88

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @memcpy(i32* %31, i8* %32, i32 4)
  br label %34

34:                                               ; preds = %29, %26
  br label %88

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @memcpy(i32* %40, i8* %41, i32 4)
  br label %43

43:                                               ; preds = %38, %35
  br label %88

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32* @memdup(i8* %48, i32 %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %89

56:                                               ; preds = %47
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %56, %44
  br label %88

71:                                               ; preds = %4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @unaligned_read_be16(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %77, 4
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @unaligned_read_be16(i8* %80)
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %74, %71
  br label %88

88:                                               ; preds = %4, %87, %70, %43, %34, %25
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @unaligned_read_be32(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32* @memdup(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @unaligned_read_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
