; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_create_proxy_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_create_proxy_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IPSFactoryBuffer_CreateProxy failed %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"wrong iface pointer %p/%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wrong refcount %u\0A\00", align 1
@dummy_unknown = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @create_proxy_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_proxy_test(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = bitcast i32** %8 to i8**
  %14 = call i32 @IPSFactoryBuffer_CreateProxy(i32* %11, i32* null, i32 %12, i32** %7, i8** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @IUnknown_Release(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @IRpcProxyBuffer_Release(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = bitcast i32** %8 to i8**
  %50 = call i32 @IPSFactoryBuffer_CreateProxy(i32* %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 1), i32 %48, i32** %7, i8** %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %58 = icmp eq i32 %57, 5
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = bitcast i32* %62 to i8**
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %8, align 8
  %69 = bitcast i32* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @IUnknown_Release(i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 4
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %82 = icmp eq i32 %81, 4
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @IRpcProxyBuffer_Release(i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %94 = icmp eq i32 %93, 4
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dummy_unknown, i32 0, i32 0), align 4
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  ret void
}

declare dso_local i32 @IPSFactoryBuffer_CreateProxy(i32*, i32*, i32, i32**, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IRpcProxyBuffer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
