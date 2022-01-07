; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leafNodeValidate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leafNodeValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @leafNodeValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leafNodeValidate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %225

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %3, align 8
  %24 = icmp ugt i8* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @getVarint32(i8* %27, i32* %6)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @getVarint32(i8* %49, i32* %6)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i8*, i8** %3, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @getVarint32(i8* %83, i32* %6)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %4, align 4
  %103 = icmp sle i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* @DL_DEFAULT, align 4
  %107 = load i8*, i8** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ASSERT_VALID_DOCLIST(i32 %106, i8* %110, i32 %111, i32* null)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i8*, i8** %3, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %127, %10
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %225

127:                                              ; preds = %124
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 @getVarint32(i8* %128, i32* %6)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp sgt i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = icmp sge i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* %5, align 4
  %144 = load i8*, i8** %3, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %3, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %4, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %4, align 4
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @getVarint32(i8* %150, i32* %6)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = icmp sgt i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %160, %161
  %163 = icmp sgt i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %4, align 4
  %170 = icmp slt i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i8*, i8** %3, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %3, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %4, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load i8*, i8** %3, align 8
  %185 = call i32 @getVarint32(i8* %184, i32* %6)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp sgt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = icmp sgt i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp sgt i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %4, align 4
  %204 = icmp sle i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* @DL_DEFAULT, align 4
  %208 = load i8*, i8** %3, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @ASSERT_VALID_DOCLIST(i32 %207, i8* %211, i32 %212, i32* null)
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i8*, i8** %3, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %3, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %4, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %4, align 4
  br label %124

225:                                              ; preds = %9, %124
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getVarint32(i8*, i32*) #1

declare dso_local i32 @ASSERT_VALID_DOCLIST(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
