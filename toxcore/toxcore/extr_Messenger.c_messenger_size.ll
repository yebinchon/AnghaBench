; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_size.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@NUM_SAVED_TCP_RELAYS = common dso_local global i32 0, align 4
@TCP_INET6 = common dso_local global i32 0, align 4
@NUM_SAVED_PATH_NODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @messenger_size(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 %7, 2
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 4
  %13 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DHT_size(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = add i64 %21, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call i32 @saved_friendslist_size(%struct.TYPE_4__* %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 %30, %33
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %37, %41
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = add i64 %53, 1
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i32, i32* @NUM_SAVED_TCP_RELAYS, align 4
  %59 = load i32, i32* @TCP_INET6, align 4
  %60 = call i32 @packed_node_size(i32 %59)
  %61 = mul nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = add i64 %57, %62
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = load i32, i32* @NUM_SAVED_PATH_NODES, align 4
  %68 = load i32, i32* @TCP_INET6, align 4
  %69 = call i32 @packed_node_size(i32 %68)
  %70 = mul nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 %66, %71
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = trunc i64 %75 to i32
  ret i32 %76
}

declare dso_local i32 @DHT_size(i32) #1

declare dso_local i32 @saved_friendslist_size(%struct.TYPE_4__*) #1

declare dso_local i32 @packed_node_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
