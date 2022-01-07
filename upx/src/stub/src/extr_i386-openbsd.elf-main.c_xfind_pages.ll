; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-openbsd.elf-main.c_xfind_pages.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-openbsd.elf-main.c_xfind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i64, i64 }

@__const.xfind_pages.lo = private unnamed_addr constant [2 x i64] [i64 4294967295, i64 4294967295], align 16
@mflags = common dso_local global i32 0, align 4
@p_brk = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@PF_X = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*, i32, i32*)* @xfind_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfind_pages(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = bitcast [2 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = bitcast [2 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = bitcast [2 x i64]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([2 x i64]* @__const.xfind_pages.lo to i8*), i64 16, i1 false)
  store i32 0, i32* %13, align 4
  %19 = call i32 (...) @STR_xfind_pages()
  %20 = load i32, i32* @mflags, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @p_brk, align 4
  %24 = call i32 @DPRINTF(i32 %23)
  br label %25

25:                                               ; preds = %88, %4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %25
  %30 = load i64, i64* @PT_LOAD, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %29
  %36 = load i32, i32* @PF_X, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %35
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %54
  store i64 %52, i64* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %60
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %49, %35
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = icmp ult i64 %66, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = load i32, i32* %15, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %84
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %75, %62
  br label %87

87:                                               ; preds = %86, %29
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 1
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %6, align 8
  br label %25

91:                                               ; preds = %25
  %92 = load i32, i32* @ET_EXEC, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  %98 = icmp ule i64 536870912, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 -67108864, %102
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 67108863, %106
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 67108863, %110
  %112 = call i32 @umax(i32 %107, i32 %111)
  %113 = add i32 %103, %112
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* @PAGE_MASK, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @PAGE_MASK, align 4
  %117 = sub i32 %115, %116
  %118 = sub i32 %117, 1
  %119 = and i32 %114, %118
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %99, %95, %91
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %218, %120
  %122 = load i32, i32* %14, align 4
  %123 = icmp sle i32 %122, 1
  br i1 %123, label %124, label %221

124:                                              ; preds = %121
  %125 = load i32, i32* @PAGE_MASK, align 4
  %126 = xor i32 %125, -1
  %127 = zext i32 %126 to i64
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %127, %131
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* @PAGE_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = zext i32 %139 to i64
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = and i64 %140, %144
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %149, %145
  store i64 %150, i64* %148, align 8
  %151 = load i32, i32* %13, align 4
  %152 = zext i32 %151 to i64
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %152, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* @PAGE_MASK, align 4
  %164 = zext i32 %163 to i64
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = sub i64 %168, %172
  %174 = load i32, i32* @PAGE_MASK, align 4
  %175 = zext i32 %174 to i64
  %176 = sub i64 %173, %175
  %177 = sub i64 %176, 1
  %178 = and i64 %164, %177
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %180
  store i64 %178, i64* %181, align 8
  %182 = load i32, i32* @PAGE_MASK, align 4
  %183 = zext i32 %182 to i64
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @PAGE_MASK, align 4
  %189 = zext i32 %188 to i64
  %190 = sub i64 %187, %189
  %191 = sub i64 %190, 1
  %192 = and i64 %183, %191
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 %194
  store i64 %192, i64* %195, align 8
  %196 = load i32, i32* %13, align 4
  %197 = zext i32 %196 to i64
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %197, %201
  %203 = inttoptr i64 %202 to i8*
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @PROT_NONE, align 4
  %209 = load i32, i32* @MAP_FIXED, align 4
  %210 = load i32, i32* @MAP_PRIVATE, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @MAP_ANONYMOUS, align 4
  %213 = or i32 %211, %212
  %214 = call i8* @mmap(i8* %203, i64 %207, i32 %208, i32 %213, i32 -1, i32 0)
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 %216
  store i8* %214, i8** %217, align 8
  br label %218

218:                                              ; preds = %124
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  br label %121

221:                                              ; preds = %121
  %222 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %223 = load i8*, i8** %222, align 16
  %224 = ptrtoint i8* %223 to i64
  %225 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = sub i64 %224, %226
  ret i64 %227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPRINTF(i32) #2

declare dso_local i32 @STR_xfind_pages(...) #2

declare dso_local i32 @umax(i32, i32) #2

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
