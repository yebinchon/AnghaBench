; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_struct_name.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_struct_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@CPNS_STRUCT = common dso_local global i32 0, align 4
@CPNS_DEFAULT = common dso_local global i32 0, align 4
@CTOK_IDENT = common dso_local global i64 0, align 8
@CTMASK_NUM = common dso_local global i32 0, align 4
@CTF_UNION = common dso_local global i32 0, align 4
@LJ_ERR_FFI_REDEF = common dso_local global i32 0, align 4
@CPARSE_MODE_NOIMPLICIT = common dso_local global i32 0, align 4
@LJ_ERR_FFI_BADTAG = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, i32)* @cp_struct_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_struct_name(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CPNS_STRUCT, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = call i32 @cp_next(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @cp_decl_attributes(%struct.TYPE_14__* %14, i32* %15)
  %17 = load i32, i32* @CPNS_DEFAULT, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 123
  br i1 %24, label %25, label %111

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i64
  %30 = load i64, i64* @CTOK_IDENT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load i64, i64* @CTOK_IDENT, align 8
  %35 = call i32 @cp_err_token(%struct.TYPE_14__* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %8, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %52, %53
  %55 = load i32, i32* @CTMASK_NUM, align 4
  %56 = load i32, i32* @CTF_UNION, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %42
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = load i32, i32* @LJ_ERR_FFI_REDEF, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gcref(i32 %65)
  %67 = call i32 @gco2str(i32 %66)
  %68 = call i32 @strdata(i32 %67)
  %69 = call i32 @cp_errmsg(%struct.TYPE_14__* %61, i32 0, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %60, %42
  br label %108

71:                                               ; preds = %36
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CPARSE_MODE_NOIMPLICIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = load i32, i32* @LJ_ERR_FFI_BADTAG, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strdata(i32 %83)
  %85 = call i32 @cp_errmsg(%struct.TYPE_14__* %79, i32 0, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %78, %71
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @lj_ctype_new(i32 %89, %struct.TYPE_13__** %8)
  store i64 %90, i64* %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* @CTSIZE_INVALID, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ctype_setname(%struct.TYPE_13__* %97, i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @lj_ctype_addname(i32 %104, %struct.TYPE_13__* %105, i64 %106)
  br label %108

108:                                              ; preds = %86, %70
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = call i32 @cp_next(%struct.TYPE_14__* %109)
  br label %122

111:                                              ; preds = %3
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @lj_ctype_new(i32 %114, %struct.TYPE_13__** %8)
  store i64 %115, i64* %7, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i64, i64* @CTSIZE_INVALID, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %111, %108
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 8
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 123
  br i1 %127, label %128, label %152

128:                                              ; preds = %122
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CTSIZE_INVALID, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134, %128
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = load i32, i32* @LJ_ERR_FFI_REDEF, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @gcref(i32 %144)
  %146 = call i32 @gco2str(i32 %145)
  %147 = call i32 @strdata(i32 %146)
  %148 = call i32 @cp_errmsg(%struct.TYPE_14__* %140, i32 0, i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %139, %134
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %122
  %153 = load i64, i64* %7, align 8
  ret i64 %153
}

declare dso_local i32 @cp_next(%struct.TYPE_14__*) #1

declare dso_local i32 @cp_decl_attributes(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @cp_err_token(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @strdata(i32) #1

declare dso_local i32 @gco2str(i32) #1

declare dso_local i32 @gcref(i32) #1

declare dso_local i64 @lj_ctype_new(i32, %struct.TYPE_13__**) #1

declare dso_local i32 @ctype_setname(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lj_ctype_addname(i32, %struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
