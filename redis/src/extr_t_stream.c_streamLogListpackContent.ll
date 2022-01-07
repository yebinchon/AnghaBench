; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamLogListpackContent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamLogListpackContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_INTBUF_SIZE = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"- [%d] '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @streamLogListpackContent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @lpFirst(i8* %8)
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i32, i32* @LP_INTBUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @lpGet(i8* %18, i64* %6, i8* %17)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @serverLog(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i8* %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @lpNext(i8* %27, i8* %28)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %30)
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local i8* @lpFirst(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @lpGet(i8*, i64*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @lpNext(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
