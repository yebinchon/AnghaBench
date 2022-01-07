; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_write_auth_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_write_auth_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@binlog_enabled = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DC_SERIALIZED_MAGIC = common dso_local global i32 0, align 4
@TLS = common dso_local global %struct.TYPE_5__* null, align 8
@write_dc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_auth_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @binlog_enabled, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %49

6:                                                ; preds = %0
  %7 = call i32 (...) @get_auth_key_filename()
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @open(i32 %7, i32 %10, i32 384)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @DC_SERIALIZED_MAGIC, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @write(i32 %17, i32* %2, i32 4)
  %19 = icmp eq i32 %18, 4
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TLS, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @write(i32 %22, i32* %24, i32 4)
  %26 = icmp eq i32 %25, 4
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TLS, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @write(i32 %29, i32* %31, i32 4)
  %33 = icmp eq i32 %32, 4
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TLS, align 8
  %37 = load i32, i32* @write_dc, align 4
  %38 = call i32 @tgl_dc_iterator_ex(%struct.TYPE_5__* %36, i32 %37, i32* %1)
  %39 = load i32, i32* %1, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @TLS, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @write(i32 %39, i32* %42, i32 4)
  %44 = icmp eq i32 %43, 4
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_auth_key_filename(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @tgl_dc_iterator_ex(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
