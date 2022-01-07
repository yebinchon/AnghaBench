; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_append_key.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_append_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.keypos = type { i32, i32 }

@NC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, i32*, i32)* @memcache_append_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memcache_append_key(%struct.msg* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.keypos*, align 8
  store %struct.msg* %0, %struct.msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.msg*, %struct.msg** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, 2
  %13 = call %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %10, i32 %12)
  store %struct.mbuf* %13, %struct.mbuf** %8, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %15 = icmp eq %struct.mbuf* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.msg*, %struct.msg** %5, align 8
  %20 = getelementptr inbounds %struct.msg, %struct.msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.keypos* @array_push(i32 %21)
  store %struct.keypos* %22, %struct.keypos** %9, align 8
  %23 = load %struct.keypos*, %struct.keypos** %9, align 8
  %24 = icmp eq %struct.keypos* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.keypos*, %struct.keypos** %9, align 8
  %32 = getelementptr inbounds %struct.keypos, %struct.keypos* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.keypos*, %struct.keypos** %9, align 8
  %39 = getelementptr inbounds %struct.keypos, %struct.keypos* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mbuf_copy(%struct.mbuf* %40, i32* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.msg*, %struct.msg** %5, align 8
  %46 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = call i32 @mbuf_copy(%struct.mbuf* %49, i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  %51 = load %struct.msg*, %struct.msg** %5, align 8
  %52 = getelementptr inbounds %struct.msg, %struct.msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @NC_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %27, %25, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.mbuf* @msg_ensure_mbuf(%struct.msg*, i32) #1

declare dso_local %struct.keypos* @array_push(i32) #1

declare dso_local i32 @mbuf_copy(%struct.mbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
