; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_dht_pk_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_dht_pk_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @dht_pk_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dht_pk_callback(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_8__* @get_conn(%struct.TYPE_7__* %11, i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @public_key_cmp(i32 %20, i32* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %59

25:                                               ; preds = %17
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @change_dht_pk(%struct.TYPE_7__* %26, i32 %27, i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @crypto_kill(i32 %37, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @handle_status(i8* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %34, %25
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @friend_new_connection(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @onion_set_friend_DHT_pubkey(i32 %53, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %47, %24, %16
  ret void
}

declare dso_local %struct.TYPE_8__* @get_conn(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @public_key_cmp(i32, i32*) #1

declare dso_local i32 @change_dht_pk(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @crypto_kill(i32, i32) #1

declare dso_local i32 @handle_status(i8*, i32, i32) #1

declare dso_local i32 @friend_new_connection(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @onion_set_friend_DHT_pubkey(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
