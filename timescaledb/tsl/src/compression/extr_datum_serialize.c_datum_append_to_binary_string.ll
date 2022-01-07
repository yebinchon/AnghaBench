; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_datum_append_to_binary_string.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_datum_append_to_binary_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@MESSAGE_SPECIFIES_ENCODING = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"incorrect encoding chosen in datum_append_to_binary_string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datum_append_to_binary_string(%struct.TYPE_5__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = call i32 @load_send_fn(%struct.TYPE_5__* %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @MESSAGE_SPECIFIES_ENCODING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pq_sendbyte(i32 %17, i64 %20)
  br label %31

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i64 @datum_serializer_binary_string_encoding(%struct.TYPE_5__* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @SendFunctionCall(i32* %38, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @VARSIZE_ANY_EXHDR(i32* %42)
  %44 = call i32 @pq_sendint32(i32 %41, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @VARDATA(i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @VARSIZE_ANY_EXHDR(i32* %48)
  %50 = call i32 @pq_sendbytes(i32 %45, i32 %47, i32 %49)
  br label %59

51:                                               ; preds = %31
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @OutputFunctionCall(i32* %53, i32 %54)
  store i8* %55, i8** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @pq_sendstring(i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %51, %36
  ret void
}

declare dso_local i32 @load_send_fn(%struct.TYPE_5__*) #1

declare dso_local i32 @pq_sendbyte(i32, i64) #1

declare dso_local i64 @datum_serializer_binary_string_encoding(%struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @SendFunctionCall(i32*, i32) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @pq_sendbytes(i32, i32, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32 @pq_sendstring(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
