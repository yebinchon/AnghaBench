; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_llex.c_readutf8esc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_llex.c_readutf8esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i32 }

@.str = private unnamed_addr constant [12 x i8] c"missing '{'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"UTF-8 value too large\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"missing '}'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @readutf8esc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readutf8esc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 4, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i64 @save_and_next(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 123
  %13 = zext i1 %12 to i32
  %14 = call i32 @esccheck(%struct.TYPE_7__* %7, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i64 @gethexa(%struct.TYPE_7__* %15)
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %25, %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call i64 @save_and_next(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 4
  %23 = call i32 @lisxdigit(i8 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* %3, align 8
  %29 = shl i64 %28, 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  %33 = call i64 @luaO_hexavalue(i8 signext %32)
  %34 = add i64 %29, %33
  store i64 %34, i64* %3, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ule i64 %36, 1114111
  %38 = zext i1 %37 to i32
  %39 = call i32 @esccheck(%struct.TYPE_7__* %35, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 125
  %47 = zext i1 %46 to i32
  %48 = call i32 @esccheck(%struct.TYPE_7__* %41, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = call i32 @next(%struct.TYPE_7__* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @luaZ_buffremove(i32 %53, i32 %54)
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @save_and_next(%struct.TYPE_7__*) #1

declare dso_local i32 @esccheck(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @gethexa(%struct.TYPE_7__*) #1

declare dso_local i32 @lisxdigit(i8 signext) #1

declare dso_local i64 @luaO_hexavalue(i8 signext) #1

declare dso_local i32 @next(%struct.TYPE_7__*) #1

declare dso_local i32 @luaZ_buffremove(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
