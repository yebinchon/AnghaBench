; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_write_dc.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_write_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_dc = type { i32, i32, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32* }

@TGLDCF_LOGGED_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_dc(%struct.tgl_dc* %0, i8* %1) #0 {
  %3 = alloca %struct.tgl_dc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tgl_dc* %0, %struct.tgl_dc** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %13 = icmp ne %struct.tgl_dc* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @write(i32 %15, i32* %6, i32 4)
  %17 = icmp eq i32 %16, 4
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %86

20:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @write(i32 %21, i32* %7, i32 4)
  %23 = icmp eq i32 %22, 4
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %28 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TGLDCF_LOGGED_IN, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %35 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @write(i32 %33, i32* %39, i32 4)
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %45 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @strlen(i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @write(i32 %52, i32* %8, i32 4)
  %54 = icmp eq i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %59 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @write(i32 %57, i32* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %73 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %72, i32 0, i32 1
  %74 = call i32 @write(i32 %71, i32* %73, i32 8)
  %75 = icmp eq i32 %74, 8
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.tgl_dc*, %struct.tgl_dc** %3, align 8
  %80 = getelementptr inbounds %struct.tgl_dc, %struct.tgl_dc* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @write(i32 %78, i32* %81, i32 256)
  %83 = icmp eq i32 %82, 256
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
