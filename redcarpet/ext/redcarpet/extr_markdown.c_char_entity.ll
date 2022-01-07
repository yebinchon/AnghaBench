; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_entity.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64, i32, i32, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64)* @char_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_entity(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buf, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 1, i64* %12, align 8
  %14 = bitcast %struct.buf* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %12, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %12, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %25, %18, %5
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @_isalnum(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i1 [ false, %29 ], [ %39, %33 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %29

45:                                               ; preds = %40
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 59
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %60

59:                                               ; preds = %49, %45
  store i64 0, i64* %6, align 8
  br label %89

60:                                               ; preds = %56
  %61 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %62 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %63, align 8
  %65 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %72 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %73, align 8
  %75 = load %struct.buf*, %struct.buf** %7, align 8
  %76 = bitcast %struct.buf* %75 to %struct.buf.0*
  %77 = bitcast %struct.buf* %13 to %struct.buf.0*
  %78 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %79 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %74(%struct.buf.0* %76, %struct.buf.0* %77, i32 %80)
  br label %87

82:                                               ; preds = %60
  %83 = load %struct.buf*, %struct.buf** %7, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @bufput(%struct.buf* %83, i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %66
  %88 = load i64, i64* %12, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %59
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @_isalnum(i8 signext) #2

declare dso_local i32 @bufput(%struct.buf*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
