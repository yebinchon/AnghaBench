; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_check_reader.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_check_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson_reader = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid bson block (%d:%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.bson_reader*, i32)* @check_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reader(i32* %0, %struct.bson_reader* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bson_reader*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bson_reader* %1, %struct.bson_reader** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %8 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.bson_reader*, %struct.bson_reader** %5, align 8
  %15 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @luaL_error(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @luaL_error(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
