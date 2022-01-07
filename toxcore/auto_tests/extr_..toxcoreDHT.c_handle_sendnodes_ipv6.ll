; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_handle_sendnodes_ipv6.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_handle_sendnodes_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MAX_SENT_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @handle_sendnodes_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sendnodes_ipv6(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* @MAX_SENT_NODES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.TYPE_3__, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX_SENT_NODES, align 4
  %27 = call i64 @handle_sendnodes_core(i8* %22, i32 %23, i32* %24, i32 %25, %struct.TYPE_3__* %21, i32 %26, i64* %13)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %73

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %73

34:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %35

35:                                               ; preds = %69, %34
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i64 @ipport_isset(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ping_node_from_getnodes_ok(i32* %46, i32 %50, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = call i32 @returnedip_ports(i32* %56, i32 %60, i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %45, %39
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %15, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %15, align 8
  br label %35

72:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %33, %29
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @handle_sendnodes_core(i8*, i32, i32*, i32, %struct.TYPE_3__*, i32, i64*) #2

declare dso_local i64 @ipport_isset(i32*) #2

declare dso_local i32 @ping_node_from_getnodes_ok(i32*, i32, i32) #2

declare dso_local i32 @returnedip_ports(i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
