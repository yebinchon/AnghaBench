; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_sddecl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_sddecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@reader_parse_sddecl.standaloneW = internal constant [11 x i8] c"standalone\00", align 1
@reader_parse_sddecl.yesW = internal constant [4 x i8] c"yes\00", align 1
@reader_parse_sddecl.noW = internal constant [3 x i8] c"no\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@quoteW = common dso_local global i8* null, align 8
@dblquoteW = common dso_local global i8* null, align 8
@WC_E_QUOTE = common dso_local global i32 0, align 4
@WC_E_XMLDECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"standalone=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @reader_parse_sddecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_sddecl(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @reader_skipspaces(%struct.TYPE_10__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @S_FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = bitcast %struct.reader_position* %4 to i8*
  %18 = bitcast %struct.reader_position* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i64 @reader_cmp(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @reader_parse_sddecl.standaloneW, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @S_FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %96

24:                                               ; preds = %14
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @reader_get_cur(%struct.TYPE_10__* %25)
  %27 = call i32 @reader_init_strvalue(i32 %26, i32 10, i32* %5)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = call i32 @reader_skipn(%struct.TYPE_10__* %28, i32 10)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @reader_parse_eq(%struct.TYPE_10__* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %24
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = load i8*, i8** @quoteW, align 8
  %40 = call i64 @reader_cmp(%struct.TYPE_10__* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load i8*, i8** @dblquoteW, align 8
  %45 = call i64 @reader_cmp(%struct.TYPE_10__* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %48, i32* %2, align 4
  br label %96

49:                                               ; preds = %42, %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = call i32 @reader_skipn(%struct.TYPE_10__* %50, i32 1)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i64 @reader_cmp(%struct.TYPE_10__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @reader_parse_sddecl.yesW, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = call i64 @reader_cmp(%struct.TYPE_10__* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @reader_parse_sddecl.noW, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @WC_E_XMLDECL, align 4
  store i32 %60, i32* %2, align 4
  br label %96

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i32 @reader_get_cur(%struct.TYPE_10__* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = call i64 @reader_cmp(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @reader_parse_sddecl.yesW, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 3
  %70 = call i32 @reader_skipn(%struct.TYPE_10__* %64, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = call i32 @reader_get_cur(%struct.TYPE_10__* %72)
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @reader_init_strvalue(i32 %71, i32 %75, i32* %6)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @debug_strval(%struct.TYPE_10__* %77, i32* %6)
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = load i8*, i8** @quoteW, align 8
  %82 = call i64 @reader_cmp(%struct.TYPE_10__* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %61
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = load i8*, i8** @dblquoteW, align 8
  %87 = call i64 @reader_cmp(%struct.TYPE_10__* %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @WC_E_QUOTE, align 4
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %84, %61
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = call i32 @reader_skipn(%struct.TYPE_10__* %92, i32 1)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = call i32 @reader_add_attr(%struct.TYPE_10__* %94, i32* null, i32* %5, i32* null, i32* %6, %struct.reader_position* %4, i32 0)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %89, %59, %47, %35, %22, %12
  %97 = load i32, i32* %2, align 4
  ret i32 %97
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

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_strval(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @reader_add_attr(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, %struct.reader_position*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
