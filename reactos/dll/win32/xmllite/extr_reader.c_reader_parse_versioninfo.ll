; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_versioninfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_versioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@reader_parse_versioninfo.versionW = internal constant [8 x i8] c"version\00", align 1
@WC_E_WHITESPACE = common dso_local global i32 0, align 4
@WC_E_XMLDECL = common dso_local global i32 0, align 4
@quoteW = common dso_local global i8* null, align 8
@dblquoteW = common dso_local global i8* null, align 8
@WC_E_QUOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @reader_parse_versioninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_versioninfo(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i32 @reader_skipspaces(%struct.TYPE_10__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @WC_E_WHITESPACE, align 4
  store i32 %12, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = bitcast %struct.reader_position* %4 to i8*
  %17 = bitcast %struct.reader_position* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i64 @reader_cmp(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @reader_parse_versioninfo.versionW, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @WC_E_XMLDECL, align 4
  store i32 %22, i32* %2, align 4
  br label %75

23:                                               ; preds = %13
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i32 @reader_get_cur(%struct.TYPE_10__* %24)
  %26 = call i32 @reader_init_strvalue(i32 %25, i32 7, i32* %6)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i32 @reader_skipn(%struct.TYPE_10__* %27, i32 7)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @reader_parse_eq(%struct.TYPE_10__* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %23
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load i8*, i8** @quoteW, align 8
  %39 = call i64 @reader_cmp(%struct.TYPE_10__* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i8*, i8** @dblquoteW, align 8
  %44 = call i64 @reader_cmp(%struct.TYPE_10__* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %41, %36
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i32 @reader_skipn(%struct.TYPE_10__* %49, i32 1)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = call i32 @reader_parse_versionnum(%struct.TYPE_10__* %51, i32* %5)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = load i8*, i8** @quoteW, align 8
  %61 = call i64 @reader_cmp(%struct.TYPE_10__* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = load i8*, i8** @dblquoteW, align 8
  %66 = call i64 @reader_cmp(%struct.TYPE_10__* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %63, %58
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call i32 @reader_skipn(%struct.TYPE_10__* %71, i32 1)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = call i32 @reader_add_attr(%struct.TYPE_10__* %73, i32* null, i32* %6, i32* null, i32* %5, %struct.reader_position* %4, i32 0)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %68, %56, %46, %34, %21, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @reader_skipspaces(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @reader_cmp(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @reader_init_strvalue(i32, i32, i32*) #1

declare dso_local i32 @reader_get_cur(%struct.TYPE_10__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @reader_parse_eq(%struct.TYPE_10__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_parse_versionnum(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @reader_add_attr(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, %struct.reader_position*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
