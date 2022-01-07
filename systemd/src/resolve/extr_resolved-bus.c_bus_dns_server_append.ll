; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-bus.c_bus_dns_server_append.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-bus.c_bus_dns_server_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"(iiay)\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"(iay)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"iiay\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"iay\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_dns_server_append(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @AF_UNSPEC, align 4
  %19 = call i32 (i32*, i8*, i32, ...) @sd_bus_message_append(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @AF_UNSPEC, align 4
  %23 = call i32 (i32*, i8*, i32, ...) @sd_bus_message_append(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 @sd_bus_message_open_container(i32* %25, i8 signext 114, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call i32 @dns_server_ifindex(%struct.TYPE_4__* %40)
  %42 = call i32 (i32*, i8*, i32, ...) @sd_bus_message_append(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %74

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @sd_bus_message_append(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FAMILY_ADDRESS_SIZE(i32 %64)
  %66 = call i32 @sd_bus_message_append_array(i32* %59, i8 signext 121, i32* %61, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @sd_bus_message_close_container(i32* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %69, %56, %45, %33, %20, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32, ...) #1

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @dns_server_ifindex(%struct.TYPE_4__*) #1

declare dso_local i32 @sd_bus_message_append_array(i32*, i8 signext, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
