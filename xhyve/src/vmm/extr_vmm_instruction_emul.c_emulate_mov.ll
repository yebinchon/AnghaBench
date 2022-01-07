; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_mov.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_emulate_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@gpr_map = common dso_local global i32* null, align 8
@size2mask = common dso_local global i32* null, align 8
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.vie*, i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)*, i8*)* @emulate_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_mov(i8* %0, i32 %1, i32 %2, %struct.vie* %3, i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32, i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vie*, align 8
  %12 = alloca i32 (i8*, i32, i32, i32*, i32, i8*)*, align 8
  %13 = alloca i32 (i8*, i32, i32, i32, i32, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.vie* %3, %struct.vie** %11, align 8
  store i32 (i8*, i32, i32, i32*, i32, i8*)* %4, i32 (i8*, i32, i32, i32*, i32, i8*)** %12, align 8
  store i32 (i8*, i32, i32, i32, i32, i8*)* %5, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %20 = load %struct.vie*, %struct.vie** %11, align 8
  %21 = getelementptr inbounds %struct.vie, %struct.vie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.vie*, %struct.vie** %11, align 8
  %25 = getelementptr inbounds %struct.vie, %struct.vie* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %188 [
    i32 136, label %28
    i32 137, label %45
    i32 138, label %75
    i32 139, label %92
    i32 161, label %116
    i32 163, label %135
    i32 198, label %159
    i32 199, label %170
  ]

28:                                               ; preds = %7
  store i32 1, i32* %16, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.vie*, %struct.vie** %11, align 8
  %32 = call i32 @vie_read_bytereg(i8* %29, i32 %30, %struct.vie* %31, i32* %18)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 %36(i8* %37, i32 %38, i32 %39, i32 %40, i32 %41, i8* %42)
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %35, %28
  br label %189

45:                                               ; preds = %7
  %46 = load i32*, i32** @gpr_map, align 8
  %47 = load %struct.vie*, %struct.vie** %11, align 8
  %48 = getelementptr inbounds %struct.vie, %struct.vie* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @vie_read_register(i8* %52, i32 %53, i32 %54, i32* %19)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %45
  %59 = load i32*, i32** @size2mask, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %19, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %19, align 4
  %66 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 %66(i8* %67, i32 %68, i32 %69, i32 %70, i32 %71, i8* %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %58, %45
  br label %189

75:                                               ; preds = %7
  store i32 1, i32* %16, align 4
  %76 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %12, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32 %76(i8* %77, i32 %78, i32 %79, i32* %19, i32 %80, i8* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.vie*, %struct.vie** %11, align 8
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @vie_write_bytereg(i8* %86, i32 %87, %struct.vie* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %85, %75
  br label %189

92:                                               ; preds = %7
  %93 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %12, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 %93(i8* %94, i32 %95, i32 %96, i32* %19, i32 %97, i8* %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %92
  %103 = load i32*, i32** @gpr_map, align 8
  %104 = load %struct.vie*, %struct.vie** %11, align 8
  %105 = getelementptr inbounds %struct.vie, %struct.vie* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %17, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @vie_update_register(i8* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %102, %92
  br label %189

116:                                              ; preds = %7
  %117 = load i32 (i8*, i32, i32, i32*, i32, i8*)*, i32 (i8*, i32, i32, i32*, i32, i8*)** %12, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 %117(i8* %118, i32 %119, i32 %120, i32* %19, i32 %121, i8* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  store i32 %127, i32* %17, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @vie_update_register(i8* %128, i32 %129, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %126, %116
  br label %189

135:                                              ; preds = %7
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %139 = call i32 @vie_read_register(i8* %136, i32 %137, i32 %138, i32* %19)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  %143 = load i32*, i32** @size2mask, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %19, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %19, align 4
  %150 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 %150(i8* %151, i32 %152, i32 %153, i32 %154, i32 %155, i8* %156)
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %142, %135
  br label %189

159:                                              ; preds = %7
  store i32 1, i32* %16, align 4
  %160 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.vie*, %struct.vie** %11, align 8
  %165 = getelementptr inbounds %struct.vie, %struct.vie* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 %160(i8* %161, i32 %162, i32 %163, i32 %166, i32 %167, i8* %168)
  store i32 %169, i32* %15, align 4
  br label %189

170:                                              ; preds = %7
  %171 = load %struct.vie*, %struct.vie** %11, align 8
  %172 = getelementptr inbounds %struct.vie, %struct.vie* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** @size2mask, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %173, %178
  store i32 %179, i32* %19, align 4
  %180 = load i32 (i8*, i32, i32, i32, i32, i8*)*, i32 (i8*, i32, i32, i32, i32, i8*)** %13, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i8*, i8** %14, align 8
  %187 = call i32 %180(i8* %181, i32 %182, i32 %183, i32 %184, i32 %185, i8* %186)
  store i32 %187, i32* %15, align 4
  br label %189

188:                                              ; preds = %7
  br label %189

189:                                              ; preds = %188, %170, %159, %158, %134, %115, %91, %74, %44
  %190 = load i32, i32* %15, align 4
  ret i32 %190
}

declare dso_local i32 @vie_read_bytereg(i8*, i32, %struct.vie*, i32*) #1

declare dso_local i32 @vie_read_register(i8*, i32, i32, i32*) #1

declare dso_local i32 @vie_write_bytereg(i8*, i32, %struct.vie*, i32) #1

declare dso_local i32 @vie_update_register(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
