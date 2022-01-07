; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_binary.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_write_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bson*, i8*, i64)* @write_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_binary(%struct.bson* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bson*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bson* %0, %struct.bson** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bson*, %struct.bson** %4, align 8
  %9 = call i32 @reserve_length(%struct.bson* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bson*, %struct.bson** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @bson_reserve(%struct.bson* %10, i64 %11)
  %13 = load %struct.bson*, %struct.bson** %4, align 8
  %14 = getelementptr inbounds %struct.bson, %struct.bson* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bson*, %struct.bson** %4, align 8
  %17 = getelementptr inbounds %struct.bson, %struct.bson* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @memcpy(i64 %19, i8* %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bson*, %struct.bson** %4, align 8
  %25 = getelementptr inbounds %struct.bson, %struct.bson* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.bson*, %struct.bson** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @write_length(%struct.bson* %28, i64 %30, i32 %31)
  ret void
}

declare dso_local i32 @reserve_length(%struct.bson*) #1

declare dso_local i32 @bson_reserve(%struct.bson*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @write_length(%struct.bson*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
