; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_TestTexture.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_TestTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.stbgl_TestTexture.scale_table = private unnamed_addr constant <{ [23 x i8], [10 x i8] }> <{ [23 x i8] c"\0A\14\1E\1E#(\05\12\19\0D\07\05\03\03\02\02\02\02\01\01\01\01\01", [10 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stbgl_TestTexture(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [33 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = bitcast [33 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 getelementptr inbounds (<{ [23 x i8], [10 x i8] }>, <{ [23 x i8], [10 x i8] }>* @__const.stbgl_TestTexture.scale_table, i32 0, i32 0, i32 0), i64 33, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %7 = call i32 @stbgl_TestTextureEx(i32 %5, i8* %6, i32 2, i32 140, i32 130, i32 200, i32 180, i32 200, i32 170)
  ret i32 %7
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stbgl_TestTextureEx(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
