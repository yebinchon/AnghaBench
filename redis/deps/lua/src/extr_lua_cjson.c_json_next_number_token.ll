; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_next_number_token.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_next_number_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@T_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @json_next_number_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_next_number_token(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32, i32* @T_NUMBER, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @fpconv_strtod(i8* %11, i8** %5)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @json_set_token_error(%struct.TYPE_9__* %22, %struct.TYPE_10__* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %29

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @fpconv_strtod(i8*, i8**) #1

declare dso_local i32 @json_set_token_error(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
